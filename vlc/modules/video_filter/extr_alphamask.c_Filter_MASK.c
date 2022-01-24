#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ i_visible_pitch; scalar_t__ i_visible_lines; } ;
typedef  TYPE_2__ plane_t ;
struct TYPE_14__ {TYPE_2__* p; } ;
typedef  TYPE_3__ picture_t ;
struct TYPE_15__ {TYPE_5__* p_sys; } ;
typedef  TYPE_4__ filter_t ;
struct TYPE_16__ {int /*<<< orphan*/  mask_lock; TYPE_1__* p_mask; } ;
typedef  TYPE_5__ filter_sys_t ;
struct TYPE_12__ {TYPE_2__* p; } ;

/* Variables and functions */
 int A_PLANE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static picture_t *FUNC4( filter_t *p_filter, picture_t *p_pic )
{
    filter_sys_t *p_sys = p_filter->p_sys;

    FUNC2( &p_sys->mask_lock );
    plane_t *p_mask = p_sys->p_mask->p+A_PLANE;
    plane_t *p_apic = p_pic->p+A_PLANE;
    if(    p_mask->i_visible_pitch
        != p_apic->i_visible_pitch
        || p_mask->i_visible_lines
        != p_apic->i_visible_lines )
    {
        FUNC0( p_filter,
                  "Mask size (%d x %d) and image size (%d x %d) "
                  "don't match. The mask will not be applied.",
                  p_mask->i_visible_pitch,
                  p_mask->i_visible_lines,
                  p_apic->i_visible_pitch,
                  p_apic->i_visible_lines );
    }
    else
    {
        FUNC1( p_apic, p_mask );
    }
    FUNC3( &p_sys->mask_lock );
    return p_pic;
}