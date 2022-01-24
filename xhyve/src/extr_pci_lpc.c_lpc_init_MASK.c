#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lpc_uart_softc {char* name; char* opts; int enabled; int /*<<< orphan*/  iobase; int /*<<< orphan*/  uart_softc; int /*<<< orphan*/  irq; } ;
struct inout_port {char* name; struct lpc_uart_softc* arg; int /*<<< orphan*/  handler; int /*<<< orphan*/  flags; int /*<<< orphan*/  size; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOPORT_F_INOUT ; 
 int LPC_UART_NUM ; 
 int /*<<< orphan*/  UART_IO_BAR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inout_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  lpc_uart_intr_assert ; 
 int /*<<< orphan*/  lpc_uart_intr_deassert ; 
 int /*<<< orphan*/  lpc_uart_io_handler ; 
 struct lpc_uart_softc* lpc_uart_softc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inout_port*) ; 
 int /*<<< orphan*/ * romfile ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpc_uart_softc*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC9(void)
{
	struct lpc_uart_softc *sc;
	struct inout_port iop;
	int unit, error;

    if (romfile != NULL) {
        error = FUNC1(romfile);
        if (error)
            return error;
    }

	/* COM1 and COM2 */
	for (unit = 0; unit < LPC_UART_NUM; unit++) {
		sc = &lpc_uart_softc[unit];

		if (FUNC7(unit, &sc->iobase, &sc->irq) != 0) {
			FUNC3(stderr, "Unable to allocate resources for "
			    "LPC device %s\n", sc->name);
			return (-1);
		}
		FUNC4(sc->irq);

		sc->uart_softc = FUNC6(lpc_uart_intr_assert,
				    lpc_uart_intr_deassert, sc);

		if (FUNC8(sc->uart_softc, sc->opts, sc->name) != 0) {
			FUNC3(stderr, "Unable to initialize backend '%s' "
			    "for LPC device %s\n", sc->opts, sc->name);
			return (-1);
		}

		FUNC2(&iop, sizeof(struct inout_port));
		iop.name = sc->name;
		iop.port = sc->iobase;
		iop.size = UART_IO_BAR_SIZE;
		iop.flags = IOPORT_F_INOUT;
		iop.handler = lpc_uart_io_handler;
		iop.arg = sc;

		error = FUNC5(&iop);
		FUNC0(error == 0);
		sc->enabled = 1;
	}

	return (0);
}