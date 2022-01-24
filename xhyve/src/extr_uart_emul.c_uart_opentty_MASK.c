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
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;
struct uart_softc {int /*<<< orphan*/ * mev; TYPE_1__ tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVF_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  uart_drain ; 

__attribute__((used)) static void
FUNC3(struct uart_softc *sc)
{

	FUNC2(&sc->tty);
	sc->mev = FUNC1(sc->tty.fd, EVF_READ, uart_drain, sc);
	FUNC0(sc->mev != NULL);
}