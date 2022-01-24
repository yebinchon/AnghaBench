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
struct virtio_softc {int /*<<< orphan*/  vs_pi; int /*<<< orphan*/  vs_flags; TYPE_1__* vs_vc; } ;
struct TYPE_2__ {int vc_nvq; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_USE_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct virtio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_softc*) ; 

int
FUNC6(struct virtio_softc *vs, int barnum, int use_msix)
{
	int nvec;

	if (use_msix) {
		vs->vs_flags |= VIRTIO_USE_MSIX;
		FUNC0(vs);
		FUNC5(vs); /* set all vectors to NO_VECTOR */
		FUNC1(vs);
		nvec = vs->vs_vc->vc_nvq + 1;
		if (FUNC3(vs->vs_pi, nvec, barnum))
			return (1);
	} else
		vs->vs_flags &= ~VIRTIO_USE_MSIX;

	/* Only 1 MSI vector for bhyve */
	FUNC2(vs->vs_pi, 1);

	/* Legacy interrupts are mandatory for virtio devices */
	FUNC4(vs->vs_pi);

	return (0);
}