#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {float Opacity; } ;
struct TYPE_5__ {TYPE_3__ shaderConstants; } ;
typedef  TYPE_1__ d3d_quad_t ;
typedef  int /*<<< orphan*/  d3d11_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PS_CONST_LUMI_BOUNDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC1(vlc_object_t *o, d3d11_device_t *d3d_dev, d3d_quad_t *quad, float opacity)
{
    if (quad->shaderConstants.Opacity == opacity)
        return;

    float old = quad->shaderConstants.Opacity;
    quad->shaderConstants.Opacity = opacity;
    if (!FUNC0(o, d3d_dev, quad, PS_CONST_LUMI_BOUNDS, &quad->shaderConstants))
        quad->shaderConstants.Opacity = old;
}