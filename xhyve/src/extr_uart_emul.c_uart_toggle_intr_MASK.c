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
typedef  scalar_t__ uint8_t ;
struct uart_softc {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* intr_assert ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* intr_deassert ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ IIR_NOPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct uart_softc*) ; 

__attribute__((used)) static void
FUNC3(struct uart_softc *sc)
{
	uint8_t intr_reason;

	intr_reason = (uint8_t) FUNC2(sc);

	if (intr_reason == IIR_NOPEND)
		(*sc->intr_deassert)(sc->arg);
	else
		(*sc->intr_assert)(sc->arg);
}