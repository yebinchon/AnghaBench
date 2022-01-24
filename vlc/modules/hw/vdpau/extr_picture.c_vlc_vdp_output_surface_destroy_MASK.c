#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  vdp; int /*<<< orphan*/  surface; } ;
typedef  TYPE_1__ vlc_vdp_output_surface_t ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(picture_t *pic)
{
    vlc_vdp_output_surface_t *sys = pic->p_sys;

    FUNC1(sys->vdp, sys->surface);
    FUNC2(sys->vdp);
    FUNC0(sys);
}