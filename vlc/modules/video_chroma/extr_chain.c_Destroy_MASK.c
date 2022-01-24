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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_chain; scalar_t__ p_video_filter; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  RestartFilterCallback ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    if (p_sys->p_video_filter)
        FUNC0( p_filter, p_sys->p_video_filter,
                                  RestartFilterCallback );
    FUNC1( p_sys->p_chain );
    FUNC2( p_sys );
}