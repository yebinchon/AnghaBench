#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  vdev_spa; scalar_t__ vdev_removing; scalar_t__ vdev_autotrim_exit_wanted; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ SPA_AUTOTRIM_OFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static boolean_t
FUNC2(vdev_t *tvd)
{
	return (tvd->vdev_autotrim_exit_wanted ||
	    !FUNC1(tvd) || tvd->vdev_removing ||
	    FUNC0(tvd->vdev_spa) == SPA_AUTOTRIM_OFF);
}