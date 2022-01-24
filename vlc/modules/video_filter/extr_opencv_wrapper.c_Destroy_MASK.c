#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_8__ {TYPE_3__* p_opencv; } ;
typedef  TYPE_2__ filter_sys_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4( vlc_object_t *p_this )
{
    filter_t* p_filter = (filter_t*)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;
    FUNC0( p_filter );

    // Release the internal OpenCV filter.
    FUNC2( p_sys->p_opencv, p_sys->p_opencv->p_module );
    FUNC3(p_sys->p_opencv);

    FUNC1( p_sys );
}