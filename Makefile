# $OpenBSD: Makefile,v 1.17 2014/01/15 02:13:58 jeremy Exp $

COMMENT =	simply control external programs

DISTNAME =	childprocess-0.5.6
CATEGORIES =	devel

HOMEPAGE=	http://github.com/jarib/childprocess

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-ffi,${MODRUBY_FLAVOR}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
