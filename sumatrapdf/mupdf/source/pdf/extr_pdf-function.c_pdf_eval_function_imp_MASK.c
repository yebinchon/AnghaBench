#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type; } ;
typedef  TYPE_1__ pdf_function ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
#define  EXPONENTIAL 131 
#define  POSTSCRIPT 130 
#define  SAMPLE 129 
#define  STITCHING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,float const,float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,float const*,float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,float const*,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,float const,float*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, pdf_function *func, const float *in, float *out)
{
	switch (func->type)
	{
	case SAMPLE: FUNC2(ctx, func, in, out); break;
	case EXPONENTIAL: FUNC0(ctx, func, *in, out); break;
	case STITCHING: FUNC3(ctx, func, *in, out); break;
	case POSTSCRIPT: FUNC1(ctx, func, in, out); break;
	}
}