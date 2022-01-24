#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_5__ {scalar_t__ images; } ;
struct TYPE_6__ {TYPE_1__ resources; } ;
typedef  TYPE_2__ pdf_document ;
typedef  int /*<<< orphan*/  fz_image ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdf_drop_obj_as_void ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

pdf_obj *
FUNC5(fz_context *ctx, pdf_document *doc, fz_image *item, unsigned char digest[16])
{
	pdf_obj *res;

	if (!doc->resources.images)
	{
		doc->resources.images = FUNC2(ctx, 4096, 16, -1, pdf_drop_obj_as_void);
		FUNC4(ctx, doc);
	}

	/* Create md5 and see if we have the item in our table */
	FUNC1(ctx, item, digest);
	res = FUNC0(ctx, doc->resources.images, digest);
	if (res)
		FUNC3(ctx, res);
	return res;
}