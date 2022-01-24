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
struct pci_vtnet_softc {int /*<<< orphan*/  rx_mtx; scalar_t__ rx_in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct pci_vtnet_softc *sc)
{

	FUNC0(&sc->rx_mtx);
	while (sc->rx_in_progress) {
		FUNC1(&sc->rx_mtx);
		FUNC2(10000);
		FUNC0(&sc->rx_mtx);
	}
	FUNC1(&sc->rx_mtx);
}