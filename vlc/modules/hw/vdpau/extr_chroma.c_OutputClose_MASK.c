#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  vdp; int /*<<< orphan*/  pool; int /*<<< orphan*/  mixer; } ;
typedef  TYPE_1__ vlc_vdp_mixer_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    vlc_vdp_mixer_t *sys = filter->p_sys;

    FUNC0(filter);
    FUNC3(sys->vdp, sys->mixer);
    FUNC1(sys->pool);
    FUNC2(sys->vdp);
}