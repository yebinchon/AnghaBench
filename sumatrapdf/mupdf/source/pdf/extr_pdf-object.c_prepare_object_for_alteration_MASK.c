#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {int kind; } ;
typedef  TYPE_1__ pdf_obj ;
struct TYPE_17__ {scalar_t__ repair_attempted; scalar_t__ save_in_progress; } ;
typedef  TYPE_2__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_15__ {int parent_num; TYPE_2__* doc; } ;
struct TYPE_14__ {int parent_num; TYPE_2__* doc; } ;

/* Variables and functions */
 TYPE_12__* FUNC0 (TYPE_1__*) ; 
 TYPE_10__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
#define  PDF_ARRAY 129 
#define  PDF_DICT 128 
 TYPE_1__* PDF_LIMIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC6(fz_context *ctx, pdf_obj *obj, pdf_obj *val)
{
	pdf_document *doc, *val_doc;
	int parent;

	/*
		obj should be a dict or an array. We don't care about
		any other types, as they aren't 'containers'.
	*/
	if (obj < PDF_LIMIT)
		return;

	switch (obj->kind)
	{
	case PDF_DICT:
		doc = FUNC1(obj)->doc;
		parent = FUNC1(obj)->parent_num;
		break;
	case PDF_ARRAY:
		doc = FUNC0(obj)->doc;
		parent = FUNC0(obj)->parent_num;
		break;
	default:
		return;
	}

	if (val)
	{
		val_doc = FUNC3(ctx, val);
		if (doc && val_doc && val_doc != doc)
			FUNC2(ctx, FZ_ERROR_GENERIC, "container and item belong to different documents");
	}

	/*
		parent_num == 0 while an object is being parsed from the file.
		No further action is necessary.
	*/
	if (parent == 0 || doc->save_in_progress || doc->repair_attempted)
		return;

	/*
		Otherwise we need to ensure that the containing hierarchy of objects
		has been moved to the incremental xref section and the newly linked
		object needs to record the parent_num
	*/
	FUNC5(ctx, doc, parent);
	FUNC4(ctx, val, parent);
}