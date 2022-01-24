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
struct atkbdc_softc {int status; int /*<<< orphan*/  outport; int /*<<< orphan*/  ps2mouse_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBDO_AUX_OUTFULL ; 
 int KBDS_AUX_BUFFER_FULL ; 
 int KBDS_KBD_BUFFER_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct atkbdc_softc*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct atkbdc_softc *sc)
{
	if (FUNC1(sc->ps2mouse_sc) > 0) {
		sc->status |= KBDS_AUX_BUFFER_FULL | KBDS_KBD_BUFFER_FULL;
		sc->outport |= KBDO_AUX_OUTFULL;
		FUNC0(sc);
	}
}