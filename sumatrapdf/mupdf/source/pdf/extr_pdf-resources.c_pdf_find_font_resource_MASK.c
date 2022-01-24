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
struct TYPE_4__ {scalar_t__ fonts; } ;
struct TYPE_5__ {TYPE_1__ resources; } ;
typedef  TYPE_2__ pdf_document ;
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__,unsigned char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdf_drop_obj_as_void ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

pdf_obj *
FUNC4(fz_context *ctx, pdf_document *doc, int type, int encoding, fz_font *item, unsigned char digest[16])
{
	pdf_obj *res;

	if (!doc->resources.fonts)
		doc->resources.fonts = FUNC2(ctx, 4096, 16, -1, pdf_drop_obj_as_void);

	FUNC0(ctx, item, digest);

	digest[0] += type;
	digest[1] += encoding;

	res = FUNC1(ctx, doc->resources.fonts, digest);
	if (res)
		FUNC3(ctx, res);
	return res;
}