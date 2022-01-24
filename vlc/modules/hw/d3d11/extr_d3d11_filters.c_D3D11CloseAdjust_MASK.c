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
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_9__ {int /*<<< orphan*/  d3d_dev; int /*<<< orphan*/  d3d_proc; TYPE_1__* out; scalar_t__* procOutput; scalar_t__* procInput; } ;
typedef  TYPE_3__ filter_sys_t ;
struct TYPE_7__ {int /*<<< orphan*/  texture; } ;

/* Variables and functions */
 int /*<<< orphan*/  AdjustCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int PROCESSOR_SLICES ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    filter_sys_t *sys = filter->p_sys;

    FUNC6( filter, "contrast",   AdjustCallback, sys );
    FUNC6( filter, "brightness", AdjustCallback, sys );
    FUNC6( filter, "hue",        AdjustCallback, sys );
    FUNC6( filter, "saturation", AdjustCallback, sys );
    FUNC6( filter, "gamma",      AdjustCallback, sys );
    FUNC6( filter, "brightness-threshold",
                                             AdjustCallback, sys );

    for (int i=0; i<PROCESSOR_SLICES; i++)
    {
        if (sys->procInput[i])
            FUNC3(sys->procInput[i]);
        if (sys->procOutput[i])
            FUNC4(sys->procOutput[i]);
    }
    FUNC2(sys->out[0].texture);
    FUNC2(sys->out[1].texture);
    FUNC1( &sys->d3d_proc );
    FUNC0(&sys->d3d_dev);

    FUNC5(sys);
}