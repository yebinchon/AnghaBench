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
typedef  int uint32_t ;
struct e82545_softc {int esc_ICR; int esc_IMS; int esc_irq_asserted; int esc_ITR; int /*<<< orphan*/ * esc_mevpitr; int /*<<< orphan*/  esc_pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  EVF_TIMER ; 
 int /*<<< orphan*/  e82545_itr_callback ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct e82545_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct e82545_softc *sc, uint32_t bits)
{
	uint32_t new;

	/*
	 * Changing the mask may allow previously asserted
	 * but masked interrupt requests to generate an interrupt.
	 */
	new = bits & sc->esc_ICR & ~sc->esc_IMS;
	sc->esc_IMS |= bits;

	if (new == 0) {
		FUNC0("ims change: masked %x, ims %x\r\n", new, sc->esc_IMS);
	} else if (sc->esc_mevpitr != NULL) {
		FUNC0("ims change: throttled %x, ims %x\r\n", new, sc->esc_IMS);
	} else if (!sc->esc_irq_asserted) {
		FUNC0("ims change: lintr assert %x\n\r", new);
		sc->esc_irq_asserted = 1;
		FUNC2(sc->esc_pi);
		if (sc->esc_ITR != 0) {
			sc->esc_mevpitr = FUNC1(
			    (sc->esc_ITR + 3905) / 3906,  /* 256ns -> 1ms */
			    EVF_TIMER, e82545_itr_callback, sc);
		}
	}
}