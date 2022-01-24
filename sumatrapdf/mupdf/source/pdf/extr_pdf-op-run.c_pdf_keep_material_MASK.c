#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ shade; scalar_t__ pattern; scalar_t__ colorspace; } ;
typedef  TYPE_1__ pdf_material ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static pdf_material *
FUNC3(fz_context *ctx, pdf_material *mat)
{
	if (mat->colorspace)
		FUNC0(ctx, mat->colorspace);
	if (mat->pattern)
		FUNC2(ctx, mat->pattern);
	if (mat->shade)
		FUNC1(ctx, mat->shade);
	return mat;
}