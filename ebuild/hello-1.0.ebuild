
EAPI=4
DESCRIPTION="simple hello world"
inherit eutils

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"

src_unpack() {
    tar xf /usr/local/portage/distfiles/hello-1.0.tar.gz -C "$WORKDIR" || die
}

src_configure() {
	econf
}

src_install(){

	einfo "Install pkg ..."
	emake DESTDIR="${D}" install

}


