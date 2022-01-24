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
struct pci_devinst {struct e82545_softc* pi_arg; } ;
struct e82545_softc {TYPE_1__* vms; int /*<<< orphan*/  esc_tx_tid; int /*<<< orphan*/  esc_tx_cond; int /*<<< orphan*/  esc_rx_cond; int /*<<< orphan*/  esc_mtx; struct pci_devinst* esc_pi; } ;
struct TYPE_2__ {int* mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  E82545_BAR_FLASH ; 
 int /*<<< orphan*/  E82545_BAR_FLASH_LEN ; 
 int /*<<< orphan*/  E82545_BAR_IO ; 
 int /*<<< orphan*/  E82545_BAR_IO_LEN ; 
 int /*<<< orphan*/  E82545_BAR_REGISTER ; 
 int /*<<< orphan*/  E82545_BAR_REGISTER_LEN ; 
 int /*<<< orphan*/  E82545_DEV_ID_82545EM_COPPER ; 
 int /*<<< orphan*/  E82545_SUBDEV_ID ; 
 int /*<<< orphan*/  E82545_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  PCIBAR_IO ; 
 int /*<<< orphan*/  PCIBAR_MEM32 ; 
 int PCIC_NETWORK ; 
 int PCIM_HDRTYPE_NORMAL ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_HDRTYPE ; 
 int /*<<< orphan*/  PCIR_INTPIN ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int /*<<< orphan*/  PCIR_SUBDEV_0 ; 
 int /*<<< orphan*/  PCIR_SUBVEND_0 ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int PCIS_NETWORK_ETHERNET ; 
 struct e82545_softc* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct e82545_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e82545_tx_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int print_mac ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct e82545_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct e82545_softc*) ; 

__attribute__((used)) static int
FUNC13(struct pci_devinst *pi, char *opts)
{
	FUNC0("Loading with options: %s\r\n", opts);

	struct e82545_softc *sc;

	/* Setup our softc */
	sc = FUNC1(1, sizeof(*sc));

	pi->pi_arg = sc;
	sc->esc_pi = pi;

	FUNC11(&sc->esc_mtx, NULL);
	FUNC9(&sc->esc_rx_cond, NULL);
	FUNC9(&sc->esc_tx_cond, NULL);
	FUNC10(&sc->esc_tx_tid, NULL, e82545_tx_thread, sc);

	FUNC6(pi, PCIR_DEVICE, E82545_DEV_ID_82545EM_COPPER);
	FUNC6(pi, PCIR_VENDOR, E82545_VENDOR_ID_INTEL);
	FUNC7(pi,  PCIR_CLASS, PCIC_NETWORK);
	FUNC7(pi, PCIR_SUBCLASS, PCIS_NETWORK_ETHERNET);
	FUNC6(pi, PCIR_SUBDEV_0, E82545_SUBDEV_ID);
	FUNC6(pi, PCIR_SUBVEND_0, E82545_VENDOR_ID_INTEL);

	FUNC7(pi,  PCIR_HDRTYPE, PCIM_HDRTYPE_NORMAL);
	FUNC7(pi,  PCIR_INTPIN, 0x1);

	/* TODO: this card also supports msi, but the freebsd driver for it
	 * does not, so I have not implemented it. */
	FUNC5(pi);

	FUNC4(pi, E82545_BAR_REGISTER, PCIBAR_MEM32,
		E82545_BAR_REGISTER_LEN);
	FUNC4(pi, E82545_BAR_FLASH, PCIBAR_MEM32,
		E82545_BAR_FLASH_LEN);
	FUNC4(pi, E82545_BAR_IO, PCIBAR_IO,
		E82545_BAR_IO_LEN);

	/*
	 * Attempt to open the tap device and read the MAC address
	 * if specified.  Copied from virtio-net, slightly modified.
	 */
    if (FUNC12(sc) == -1) {
        return (-1);
    }

    if (print_mac == 1)
    {
        FUNC8("MAC: %02x:%02x:%02x:%02x:%02x:%02x\n",
               sc->vms->mac[0], sc->vms->mac[1], sc->vms->mac[2],
               sc->vms->mac[3], sc->vms->mac[4], sc->vms->mac[5]);
        FUNC3(0);
    }

	/* H/w initiated reset */
	FUNC2(sc, 0);

	return (0);
}