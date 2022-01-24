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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int fd; } ;
struct uart_softc {int mcr; int /*<<< orphan*/  mtx; TYPE_1__ tty; } ;
typedef  enum ev_type { ____Placeholder_ev_type } ev_type ;

/* Variables and functions */
 int EVF_READ ; 
 int MCR_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_softc*) ; 

__attribute__((used)) static void
FUNC7(int fd, enum ev_type ev, void *arg)
{
	struct uart_softc *sc;
	int ch;

	sc = arg;

	FUNC0(fd == sc->tty.fd);
	FUNC0(ev == EVF_READ);

	/*
	 * This routine is called in the context of the mevent thread
	 * to take out the softc lock to protect against concurrent
	 * access from a vCPU i/o exit
	 */
	FUNC1(&sc->mtx);

	if ((sc->mcr & MCR_LOOPBACK) != 0) {
		(void) FUNC5(&sc->tty);
	} else {
		while (FUNC3(sc) &&
		       ((ch = FUNC5(&sc->tty)) != -1)) {
			FUNC4(sc, ((uint8_t) ch));
		}
		FUNC6(sc);
	}

	FUNC2(&sc->mtx);
}