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
struct ps2mouse_softc {int /*<<< orphan*/  mtx; struct atkbdc_softc* atkbdc_sc; } ;
struct atkbdc_softc {int dummy; } ;

/* Variables and functions */
 struct ps2mouse_softc* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ps2mouse_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ps2mouse_softc*) ; 
 int /*<<< orphan*/  ps2mouse_event ; 
 int /*<<< orphan*/  FUNC3 (struct ps2mouse_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct ps2mouse_softc *
FUNC7(struct atkbdc_softc *atkbdc_sc)
{
	struct ps2mouse_softc *sc;

	sc = FUNC0(1, sizeof (struct ps2mouse_softc));
	FUNC4(&sc->mtx, NULL);
	FUNC2(sc);
	sc->atkbdc_sc = atkbdc_sc;

	FUNC5(&sc->mtx);
	FUNC3(sc);
	FUNC6(&sc->mtx);

	FUNC1(ps2mouse_event, sc, 1);

	return (sc);
}