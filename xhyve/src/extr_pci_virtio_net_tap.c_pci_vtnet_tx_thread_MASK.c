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
struct pci_vtnet_softc {int tx_in_progress; int /*<<< orphan*/  tx_mtx; int /*<<< orphan*/  tx_cond; scalar_t__ resetting; struct vqueue_info* vsc_queues; } ;
struct TYPE_2__ {int /*<<< orphan*/  vu_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  VRING_USED_F_NO_NOTIFY ; 
 size_t VTNET_TXQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pci_vtnet_softc*,struct vqueue_info*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vqueue_info*,int) ; 
 scalar_t__ FUNC7 (struct vqueue_info*) ; 

__attribute__((used)) static void *
FUNC8(void *param)
{
	struct pci_vtnet_softc *sc = param;
	struct vqueue_info *vq;
	int error;

	vq = &sc->vsc_queues[VTNET_TXQ];

	/*
	 * Let us wait till the tx queue pointers get initialised &
	 * first tx signaled
	 */
	FUNC4(&sc->tx_mtx);
	error = FUNC3(&sc->tx_cond, &sc->tx_mtx);
	FUNC0(error == 0);

	for (;;) {
		/* note - tx mutex is locked here */
		while (sc->resetting || !FUNC7(vq)) {
			vq->vq_used->vu_flags &= ~VRING_USED_F_NO_NOTIFY;
			FUNC1();
			if (!sc->resetting && FUNC7(vq))
				break;

			sc->tx_in_progress = 0;
			error = FUNC3(&sc->tx_cond, &sc->tx_mtx);
			FUNC0(error == 0);
		}
		vq->vq_used->vu_flags |= VRING_USED_F_NO_NOTIFY;
		sc->tx_in_progress = 1;
		FUNC5(&sc->tx_mtx);

		do {
			/*
			 * Run through entries, placing them into
			 * iovecs and sending when an end-of-packet
			 * is found
			 */
			FUNC2(sc, vq);
		} while (FUNC7(vq));

		/*
		 * Generate an interrupt if needed.
		 */
		FUNC6(vq, 1);

		FUNC4(&sc->tx_mtx);
	}
}