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
typedef  int /*<<< orphan*/  vdev_t ;
typedef  int /*<<< orphan*/  vdev_aux_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  VDEV_STATE_CANT_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(vdev_t *vdev, vdev_aux_t aux, int err)
{
	FUNC1(vdev, B_TRUE, VDEV_STATE_CANT_OPEN, aux);
	return (FUNC0(err));
}