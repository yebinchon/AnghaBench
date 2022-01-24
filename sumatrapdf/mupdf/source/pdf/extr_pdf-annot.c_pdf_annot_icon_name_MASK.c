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
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_4__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FileAttachment ; 
 int /*<<< orphan*/  Name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Sound ; 
 int /*<<< orphan*/  Stamp ; 
 int /*<<< orphan*/  Subtype ; 
 int /*<<< orphan*/  Text ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icon_name_subtypes ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

const char *
FUNC5(fz_context *ctx, pdf_annot *annot)
{
	pdf_obj *name;
	FUNC1(ctx, annot, FUNC0(Name), icon_name_subtypes);
	name = FUNC2(ctx, annot->obj, FUNC0(Name));
	if (!name)
	{
		pdf_obj *subtype = FUNC2(ctx, annot->obj, FUNC0(Subtype));
		if (FUNC3(ctx, subtype, FUNC0(Text)))
			return "Note";
		if (FUNC3(ctx, subtype, FUNC0(Stamp)))
			return "Draft";
		if (FUNC3(ctx, subtype, FUNC0(FileAttachment)))
			return "PushPin";
		if (FUNC3(ctx, subtype, FUNC0(Sound)))
			return "Speaker";
	}
	return FUNC4(ctx, name);
}