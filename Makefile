############################################################ LICENSE
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright (c) 2026 Devin Teske <dteske@FreeBSD.org>
#
############################################################ IDENT(1)
#
# $Title: bhotkeys-xfce - Xfce panel shortcuts $
# $Copyright: 2026 Devin Teske. All rights reserved. $
# $FrauBSD: bhotkeys-xfce/Makefile 2026-10-04 07:38:30 -0700 Devin Teske $
#
############################################################ PATHS

PREFIX?=	/usr/local
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

############################################################ FILES

# listen 0. XFCE owns the key. Shown only when the session is XFCE.
# RUN_DEPENDS bhotkeys.
PLUGINS=	xfce-apps \
		xfce-display \
		xfce-files \
		xfce-files-alt \
		xfce-finder \
		xfce-finder-full \
		xfce-lock \
		xfce-logout \
		xfce-menu \
		xfce-run \
		xfce-shot \
		xfce-shot-region \
		xfce-shot-window \
		xfce-taskmgr \
		xfce-terminal \
		xfce-xkill

############################################################ TARGETS

.PHONY: install

install:
	mkdir -p ${DESTDIR}${PLUGDIR}
.for p in ${PLUGINS}
	install -m 644 plugins.d/${p} \
		${DESTDIR}${PLUGDIR}/${p}
.endfor

################################################################################
# END
################################################################################
