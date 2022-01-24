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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_5__ {int /*<<< orphan*/  d3d9_dll; int /*<<< orphan*/  hdecoder_dll; int /*<<< orphan*/  d3d_dev; int /*<<< orphan*/  processor; int /*<<< orphan*/  hw_surface; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    filter_sys_t *sys = filter->p_sys;

    FUNC2( sys->hw_surface );
    FUNC3( sys->processor );
    FUNC0( &sys->d3d_dev );
    FUNC1( sys->hdecoder_dll );
    FUNC1( sys->d3d9_dll );

    FUNC4(sys);
}