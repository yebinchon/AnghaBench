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
struct virtio_net_rxhdr {int dummy; } ;
struct pci_vtnet_softc {int resetting; int rx_merge; int rx_vhdrlen; int /*<<< orphan*/  vsc_vs; scalar_t__ vsc_rx_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *vsc)
{
	struct pci_vtnet_softc *sc = vsc;

	FUNC0(("vtnet: device reset requested !\n"));

	sc->resetting = 1;

	/*
	 * Wait for the transmit and receive threads to finish their
	 * processing.
	 */
	FUNC2(sc);
	FUNC1(sc);

	sc->vsc_rx_ready = 0;
	sc->rx_merge = 1;
	sc->rx_vhdrlen = sizeof(struct virtio_net_rxhdr);

	/* now reset rings, MSI-X vectors, and negotiated capabilities */
	FUNC3(&sc->vsc_vs);

	sc->resetting = 0;
}