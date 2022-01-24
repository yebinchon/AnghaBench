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
struct TYPE_2__ {int fd; int opened; char* name; } ;
struct uart_softc {TYPE_1__ tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int STDIN_FILENO ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_softc*) ; 
 int uart_stdio ; 
 scalar_t__ FUNC8 (struct uart_softc*,char const*) ; 
 int FUNC9 (int) ; 

int
FUNC10(struct uart_softc *sc, const char *backend, const char *devname)
{
	int retval;
	int ptyfd;
	char *ptyname;

	retval = -1;

	if (backend == NULL)
		return (0);

	if (FUNC6("stdio", backend) == 0 && !uart_stdio) {
		sc->tty.fd = STDIN_FILENO;
		sc->tty.opened = true;
		uart_stdio = true;
		retval = FUNC0(sc->tty.fd, F_SETFL, O_NONBLOCK);
	} else if (FUNC6("autopty", backend) == 0) {
		if ((ptyfd = FUNC3("/dev/ptmx", O_RDWR | O_NONBLOCK)) == -1) {
			FUNC1(stderr, "error opening /dev/ptmx char device");
			return retval;
		}

		if ((ptyname = FUNC5(ptyfd)) == NULL) {
			FUNC4("ptsname: error getting name for slave pseudo terminal");
			return retval;
		}

		if ((retval = FUNC2(ptyfd)) == -1) {
			FUNC4("error setting up ownership and permissions on slave pseudo terminal");
			return retval;
		}

		if ((retval = FUNC9(ptyfd)) == -1) {
			FUNC4("error unlocking slave pseudo terminal, to allow its usage");
			return retval;
		}

		FUNC1(stdout, "%s connected to %s\n", devname, ptyname);
		sc->tty.fd = ptyfd;
		sc->tty.name = ptyname;
		sc->tty.opened = true;
		retval = 0;
	} else if (FUNC8(sc, backend) == 0) {
		retval = 0;
	}

	if (retval == 0)
		FUNC7(sc);

	return (retval);
}