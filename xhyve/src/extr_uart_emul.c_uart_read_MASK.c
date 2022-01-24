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
typedef  int uint8_t ;
struct uart_softc {int lcr; int dll; int dlh; int ier; int fcr; int thre_int_pending; int mcr; int lsr; int msr; int scr; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int FCR_ENABLE ; 
 int IIR_FIFO_MASK ; 
 int IIR_TXRDY ; 
 int LCR_DLAB ; 
 int LSR_OE ; 
 int LSR_RXRDY ; 
 int LSR_TEMT ; 
 int LSR_THRE ; 
 int MSR_DELTA_MASK ; 
#define  REG_DATA 135 
 int REG_DLH ; 
 int REG_DLL ; 
#define  REG_IER 134 
#define  REG_IIR 133 
#define  REG_LCR 132 
#define  REG_LSR 131 
#define  REG_MCR 130 
#define  REG_MSR 129 
#define  REG_SCR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_softc*) ; 

uint8_t
FUNC6(struct uart_softc *sc, int offset)
{
	uint8_t iir, intr_reason, reg;

	FUNC0(&sc->mtx);

	/*
	 * Take care of the special case DLAB accesses first
	 */
	if ((sc->lcr & LCR_DLAB) != 0) {
		if (offset == REG_DLL) {
			reg = sc->dll;
			goto done;
		}

		if (offset == REG_DLH) {
			reg = sc->dlh;
			goto done;
		}
	}

	switch (offset) {
	case REG_DATA:
		reg = (uint8_t) FUNC2(sc);
		break;
	case REG_IER:
		reg = sc->ier;
		break;
	case REG_IIR:
		iir = (sc->fcr & FCR_ENABLE) ? IIR_FIFO_MASK : 0;

		intr_reason = (uint8_t) FUNC4(sc);

		/*
		 * Deal with side effects of reading the IIR register
		 */
		if (intr_reason == IIR_TXRDY)
			sc->thre_int_pending = false;

		iir |= intr_reason;

		reg = iir;
		break;
	case REG_LCR:
		reg = sc->lcr;
		break;
	case REG_MCR:
		reg = sc->mcr;
		break;
	case REG_LSR:
		/* Transmitter is always ready for more data */
		sc->lsr |= LSR_TEMT | LSR_THRE;

		/* Check for new receive data */
		if (FUNC3(sc) > 0)
			sc->lsr |= LSR_RXRDY;
		else
			sc->lsr &= ~LSR_RXRDY;

		reg = sc->lsr;

		/* The LSR_OE bit is cleared on LSR read */
		sc->lsr &= ~LSR_OE;
		break;
	case REG_MSR:
		/*
		 * MSR delta bits are cleared on read
		 */
		reg = sc->msr;
		sc->msr &= ~MSR_DELTA_MASK;
		break;
	case REG_SCR:
		reg = sc->scr;
		break;
	default:
		reg = 0xFF;
		break;
	}

done:
	FUNC5(sc);
	FUNC1(&sc->mtx);

	return (reg);
}