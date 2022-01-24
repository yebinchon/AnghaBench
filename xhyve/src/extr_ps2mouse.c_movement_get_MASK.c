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
typedef  int uint8_t ;
struct TYPE_2__ {int num; int size; } ;
struct ps2mouse_softc {int status; scalar_t__ delta_x; scalar_t__ delta_y; TYPE_1__ fifo; } ;

/* Variables and functions */
 int PS2M_DATA_AONE ; 
 int PS2M_DATA_LEFT_BUTTON ; 
 int PS2M_DATA_MID_BUTTON ; 
 int PS2M_DATA_RIGHT_BUTTON ; 
 int PS2M_DATA_X_OFLOW ; 
 int PS2M_DATA_X_SIGN ; 
 int PS2M_DATA_Y_OFLOW ; 
 int PS2M_DATA_Y_SIGN ; 
 int /*<<< orphan*/  FUNC0 (struct ps2mouse_softc*,int) ; 

__attribute__((used)) static void
FUNC1(struct ps2mouse_softc *sc)
{
	uint8_t val0, val1, val2;

	val0 = PS2M_DATA_AONE;
	val0 |= sc->status & (PS2M_DATA_LEFT_BUTTON |
	    PS2M_DATA_RIGHT_BUTTON | PS2M_DATA_MID_BUTTON);

	if (sc->delta_x >= 0) {
		if (sc->delta_x > 255) {
			val0 |= PS2M_DATA_X_OFLOW;
			val1 = 255;
		} else
			val1 = (uint8_t)sc->delta_x;
	} else {
		val0 |= PS2M_DATA_X_SIGN;
		if (sc->delta_x < -255) {
			val0 |= PS2M_DATA_X_OFLOW;
			val1 = 255;
		} else
			val1 = (uint8_t)sc->delta_x;
	}
	sc->delta_x = 0;

	if (sc->delta_y >= 0) {
		if (sc->delta_y > 255) {
			val0 |= PS2M_DATA_Y_OFLOW;
			val2 = 255;
		} else
			val2 = (uint8_t)sc->delta_y;
	} else {
		val0 |= PS2M_DATA_Y_SIGN;
		if (sc->delta_y < -255) {
			val0 |= PS2M_DATA_Y_OFLOW;
			val2 = 255;
		} else
			val2 = (uint8_t)sc->delta_y;
	}
	sc->delta_y = 0;

	if (sc->fifo.num < (sc->fifo.size - 3)) {
		FUNC0(sc, val0);
		FUNC0(sc, val1);
		FUNC0(sc, val2);
	}
}