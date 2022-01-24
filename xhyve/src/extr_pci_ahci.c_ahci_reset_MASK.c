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
struct pci_ahci_softc {int ports; TYPE_1__* port; scalar_t__ lintr; int /*<<< orphan*/  asc_pi; scalar_t__ is; int /*<<< orphan*/  ghc; } ;
struct TYPE_2__ {int cmd; scalar_t__ sctl; scalar_t__ bctx; scalar_t__ is; scalar_t__ ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_GHC_AE ; 
 int AHCI_P_CMD_CPS ; 
 int AHCI_P_CMD_POD ; 
 int AHCI_P_CMD_SUD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct pci_ahci_softc *sc)
{
	int i;

	sc->ghc = AHCI_GHC_AE;
	sc->is = 0;

	if (sc->lintr) {
		FUNC1(sc->asc_pi);
		sc->lintr = 0;
	}

	for (i = 0; i < sc->ports; i++) {
		sc->port[i].ie = 0;
		sc->port[i].is = 0;
		sc->port[i].cmd = (AHCI_P_CMD_SUD | AHCI_P_CMD_POD);
		if (sc->port[i].bctx)
			sc->port[i].cmd |= AHCI_P_CMD_CPS;
		sc->port[i].sctl = 0;
		FUNC0(&sc->port[i]);
	}
}