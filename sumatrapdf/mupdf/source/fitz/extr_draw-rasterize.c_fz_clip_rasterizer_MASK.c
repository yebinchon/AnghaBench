#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  y1; int /*<<< orphan*/  x1; int /*<<< orphan*/  y0; int /*<<< orphan*/  x0; } ;
struct TYPE_9__ {TYPE_1__ clip; } ;
typedef  TYPE_2__ fz_rasterizer ;
struct TYPE_10__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_3__ fz_irect ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int const) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int FUNC2 (TYPE_2__ const*) ; 
 int FUNC3 (TYPE_2__ const*) ; 

__attribute__((used)) static fz_irect FUNC4(fz_context *ctx, const fz_rasterizer *rast)
{
	fz_irect r;
	const int hscale = FUNC2(rast);
	const int vscale = FUNC3(rast);

	r.x0 = FUNC0(rast->clip.x0, hscale);
	r.y0 = FUNC0(rast->clip.y0, vscale);
	r.x1 = FUNC1(rast->clip.x1, hscale);
	r.y1 = FUNC1(rast->clip.y1, vscale);

	return r;
}