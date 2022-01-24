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
struct vqueue_info {TYPE_1__* vq_used; } ;
struct pci_vtnet_softc {scalar_t__ tx_in_progress; int /*<<< orphan*/  tx_mtx; int /*<<< orphan*/  tx_cond; } ;
struct TYPE_2__ {int /*<<< orphan*/  vu_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  VRING_USED_F_NO_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vqueue_info*) ; 

__attribute__((used)) static void
FUNC4(void *vsc, struct vqueue_info *vq)
{
	struct pci_vtnet_softc *sc = vsc;

	/*
	 * Any ring entries to process?
	 */
	if (!FUNC3(vq))
		return;

	/* Signal the tx thread for processing */
	FUNC1(&sc->tx_mtx);
	vq->vq_used->vu_flags |= VRING_USED_F_NO_NOTIFY;
	if (sc->tx_in_progress == 0)
		FUNC0(&sc->tx_cond);
	FUNC2(&sc->tx_mtx);
}