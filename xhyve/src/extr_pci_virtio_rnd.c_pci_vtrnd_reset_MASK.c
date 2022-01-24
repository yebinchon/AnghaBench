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
struct pci_vtrnd_softc {int /*<<< orphan*/  vrsc_vs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *vsc)
{
	struct pci_vtrnd_softc *sc;

	sc = vsc;

	FUNC0(("vtrnd: device reset requested !\n"));
	FUNC1(&sc->vrsc_vs);
}