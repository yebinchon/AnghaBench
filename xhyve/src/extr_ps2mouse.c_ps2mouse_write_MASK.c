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
struct ps2mouse_softc {int curcmd; int sampling_rate; int resolution; int status; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int PS2MC_ACK ; 
 int PS2MC_BAT_SUCCESS ; 
#define  PS2MC_DISABLE 140 
#define  PS2MC_ENABLE 139 
#define  PS2MC_RESET_DEV 138 
#define  PS2MC_SEND_DEV_DATA 137 
#define  PS2MC_SEND_DEV_ID 136 
#define  PS2MC_SEND_DEV_STATUS 135 
#define  PS2MC_SET_DEFAULTS 134 
#define  PS2MC_SET_REMOTE_MODE 133 
#define  PS2MC_SET_RESOLUTION 132 
#define  PS2MC_SET_SAMPLING_RATE 131 
#define  PS2MC_SET_SCALING1 130 
#define  PS2MC_SET_SCALING2 129 
#define  PS2MC_SET_STREAM_MODE 128 
 int PS2MOUSE_DEV_ID ; 
 int PS2M_STS_ENABLE_DEV ; 
 int PS2M_STS_REMOTE_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct ps2mouse_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ps2mouse_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ps2mouse_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ps2mouse_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC7(struct ps2mouse_softc *sc, uint8_t val, int insert)
{
	FUNC5(&sc->mtx);
	FUNC1(sc);
	if (sc->curcmd) {
		switch (sc->curcmd) {
		case PS2MC_SET_SAMPLING_RATE:
			sc->sampling_rate = val;
			FUNC0(sc, PS2MC_ACK);
			break;
		case PS2MC_SET_RESOLUTION:
			sc->resolution = val;
			FUNC0(sc, PS2MC_ACK);
			break;
		default:
			FUNC2(stderr, "Unhandled ps2 mouse current "
			    "command byte 0x%02x\n", val);
			break;
		}
		sc->curcmd = 0;

	} else if (insert) {
		FUNC0(sc, val);
	} else {
		switch (val) {
		case 0x00:
			FUNC0(sc, PS2MC_ACK);
			break;
		case PS2MC_RESET_DEV:
			FUNC4(sc);
			FUNC0(sc, PS2MC_ACK);
			FUNC0(sc, PS2MC_BAT_SUCCESS);
			FUNC0(sc, PS2MOUSE_DEV_ID);
			break;
		case PS2MC_SET_DEFAULTS:
			FUNC4(sc);
			FUNC0(sc, PS2MC_ACK);
			break;
		case PS2MC_DISABLE:
			FUNC1(sc);
			sc->status &= ~PS2M_STS_ENABLE_DEV;
			FUNC0(sc, PS2MC_ACK);
			break;
		case PS2MC_ENABLE:
			FUNC1(sc);
			sc->status |= PS2M_STS_ENABLE_DEV;
			FUNC0(sc, PS2MC_ACK);
			break;
		case PS2MC_SET_SAMPLING_RATE:
			sc->curcmd = val;
			FUNC0(sc, PS2MC_ACK);
			break;
		case PS2MC_SEND_DEV_ID:
			FUNC0(sc, PS2MC_ACK);
			FUNC0(sc, PS2MOUSE_DEV_ID);
			break;
		case PS2MC_SET_REMOTE_MODE:
			sc->status |= PS2M_STS_REMOTE_MODE;
			FUNC0(sc, PS2MC_ACK);
			break;
		case PS2MC_SEND_DEV_DATA:
			FUNC0(sc, PS2MC_ACK);
			FUNC3(sc);
			break;
		case PS2MC_SET_STREAM_MODE:
			sc->status &= ~PS2M_STS_REMOTE_MODE;
			FUNC0(sc, PS2MC_ACK);
			break;
		case PS2MC_SEND_DEV_STATUS:
			FUNC0(sc, PS2MC_ACK);
			FUNC0(sc, sc->status);
			FUNC0(sc, sc->resolution);
			FUNC0(sc, sc->sampling_rate);
			break;
		case PS2MC_SET_RESOLUTION:
			sc->curcmd = val;
			FUNC0(sc, PS2MC_ACK);
			break;
		case PS2MC_SET_SCALING1:
		case PS2MC_SET_SCALING2:
			FUNC0(sc, PS2MC_ACK);
			break;
		default:
			FUNC0(sc, PS2MC_ACK);
			FUNC2(stderr, "Unhandled ps2 mouse command "
			    "0x%02x\n", val);
			break;
		}
	}
	FUNC6(&sc->mtx);
}