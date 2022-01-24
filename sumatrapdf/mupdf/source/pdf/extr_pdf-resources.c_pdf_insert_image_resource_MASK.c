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
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_4__ {int /*<<< orphan*/  images; } ;
struct TYPE_5__ {TYPE_1__ resources; } ;
typedef  TYPE_2__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

pdf_obj *
FUNC3(fz_context *ctx, pdf_document *doc, unsigned char digest[16], pdf_obj *obj)
{
	pdf_obj *res = FUNC0(ctx, doc->resources.images, digest, obj);
	if (res)
		FUNC1(ctx, "warning: image resource already present");
	else
		res = FUNC2(ctx, obj);
	return FUNC2(ctx, res);
}