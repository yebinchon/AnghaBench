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
struct pci_vtblk_softc {int /*<<< orphan*/  vsc_mtx; } ;
struct pci_vtblk_ioreq {struct pci_vtblk_softc* io_sc; } ;
struct blockif_req {struct pci_vtblk_ioreq* br_param; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blockif_req*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct blockif_req *br, int err) {
	struct pci_vtblk_ioreq *io = br->br_param;
	struct pci_vtblk_softc *sc = io->io_sc;

	FUNC1(&sc->vsc_mtx);
	FUNC0(br, err);
	FUNC2(&sc->vsc_mtx);
}