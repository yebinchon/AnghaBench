#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ x1; scalar_t__ x0; scalar_t__ y1; scalar_t__ y0; } ;
struct TYPE_10__ {TYPE_1__ bbox; } ;
typedef  TYPE_2__ fz_rasterizer ;
struct TYPE_11__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_3__ fz_irect ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_3__ fz_empty_irect ; 
 void* FUNC0 (scalar_t__,int const) ; 
 void* FUNC1 (scalar_t__,int const) ; 
 int FUNC2 (TYPE_2__ const*) ; 
 int FUNC3 (TYPE_2__ const*) ; 

fz_irect
FUNC4(fz_context *ctx, const fz_rasterizer *rast)
{
	fz_irect bbox;
	const int hscale = FUNC2(rast);
	const int vscale = FUNC3(rast);

	if (rast->bbox.x1 < rast->bbox.x0 || rast->bbox.y1 < rast->bbox.y0)
	{
		bbox = fz_empty_irect;
	}
	else
	{
		bbox.x0 = FUNC0(rast->bbox.x0, hscale);
		bbox.y0 = FUNC0(rast->bbox.y0, vscale);
		bbox.x1 = FUNC1(rast->bbox.x1, hscale);
		bbox.y1 = FUNC1(rast->bbox.y1, vscale);
	}
	return bbox;
}