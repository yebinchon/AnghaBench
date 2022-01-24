#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint16_t ;
struct TYPE_2__ {scalar_t__ width; scalar_t__ height; } ;
struct pci_fbuf_softc {int rfb_wait; char* rfb_host; int vga_enabled; int vga_full; char* rfb_password; TYPE_1__ memregs; void* rfb_port; } ;

/* Variables and functions */
 scalar_t__ COLS_MAX ; 
 int /*<<< orphan*/  DEBUG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ROWS_MAX ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char**,char*) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8(struct pci_fbuf_softc *sc, char *opts)
{
	char	*uopts, *xopts, *config;
	char	*tmpstr;
	int	ret;

	ret = 0;
	uopts = FUNC5(opts);
	for (xopts = FUNC7(uopts, ",");
	     xopts != NULL;
	     xopts = FUNC7(NULL, ",")) {
		if (FUNC4(xopts, "wait") == 0) {
			sc->rfb_wait = 1;
			continue;
		}

		if ((config = FUNC3(xopts, '=')) == NULL) {
			FUNC2(xopts);
			ret = -1;
			goto done;
		}

		*config++ = '\0';

		FUNC0(DEBUG_VERBOSE, ("pci_fbuf option %s = %s\r\n",
		   xopts, config));

		if (!FUNC4(xopts, "tcp") || !FUNC4(xopts, "rfb")) {
			/* parse host-ip:port */
		        tmpstr = FUNC6(&config, ":");
			if (!config)
				sc->rfb_port = FUNC1(tmpstr);
			else {
				sc->rfb_port = FUNC1(config);
				sc->rfb_host = tmpstr;
			}
	        } else if (!FUNC4(xopts, "vga")) {
			if (!FUNC4(config, "off")) {
				sc->vga_enabled = 0;
			} else if (!FUNC4(config, "io")) {
				sc->vga_enabled = 1;
				sc->vga_full = 0;
			} else if (!FUNC4(config, "on")) {
				sc->vga_enabled = 1;
				sc->vga_full = 1;
			} else {
				FUNC2(opts);
				ret = -1;
				goto done;
			}
	        } else if (!FUNC4(xopts, "w")) {
		        sc->memregs.width = (uint16_t)FUNC1(config);
			if (sc->memregs.width > COLS_MAX) {
				FUNC2(xopts);
				ret = -1;
				goto done;
			} else if (sc->memregs.width == 0)
				sc->memregs.width = 1920;
		} else if (!FUNC4(xopts, "h")) {
			sc->memregs.height = (uint16_t)FUNC1(config);
			if (sc->memregs.height > ROWS_MAX) {
				FUNC2(xopts);
				ret = -1;
				goto done;
			} else if (sc->memregs.height == 0)
				sc->memregs.height = 1080;
		} else if (!FUNC4(xopts, "password")) {
			sc->rfb_password = config;
		} else {
			FUNC2(xopts);
			ret = -1;
			goto done;
		}
	}

done:
	return (ret);
}