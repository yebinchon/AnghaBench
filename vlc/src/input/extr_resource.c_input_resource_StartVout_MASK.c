#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* fmt; int /*<<< orphan*/  vout; } ;
typedef  TYPE_2__ vout_configuration_t ;
typedef  int /*<<< orphan*/  vlc_video_context ;
struct TYPE_13__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_input; } ;
typedef  TYPE_3__ input_resource_t ;
struct TYPE_14__ {int /*<<< orphan*/  viewpoint; } ;
typedef  TYPE_4__ input_control_param_t ;
struct TYPE_11__ {int /*<<< orphan*/  pose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INPUT_CONTROL_SET_INITIAL_VIEWPOINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(input_resource_t *p_resource,
                              vlc_video_context *vctx,
                              const vout_configuration_t *cfg)
{
    FUNC3( &p_resource->lock );
    if (FUNC5(cfg, vctx, p_resource->p_input)) {
        FUNC2(p_resource, cfg->vout);
        FUNC4(&p_resource->lock);
        return -1;
    }

    FUNC0(p_resource, cfg->vout);

    /* Send original viewpoint to the input in order to update other ESes */
    if (p_resource->p_input != NULL)
    {
        input_control_param_t param = { .viewpoint = cfg->fmt->pose };
        FUNC1(p_resource->p_input, INPUT_CONTROL_SET_INITIAL_VIEWPOINT,
                          &param);
    }
    FUNC4( &p_resource->lock );
    return 0;
}