#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_8__ {int /*<<< orphan*/ * name; int /*<<< orphan*/ * creator; } ;
typedef  TYPE_2__ pdf_layer_config ;
struct TYPE_9__ {TYPE_1__* ocg; } ;
typedef  TYPE_3__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_7__ {int num_configs; } ;

/* Variables and functions */
 int /*<<< orphan*/  Configs ; 
 int /*<<< orphan*/  Creator ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  Name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 

void
FUNC8(fz_context *ctx, pdf_document *doc, int config_num, pdf_layer_config *info)
{
	pdf_obj *ocprops;
	pdf_obj *obj;

	if (!info)
		return;

	info->name = NULL;
	info->creator = NULL;

	if (doc == NULL || doc->ocg == NULL)
		return;
	if (config_num < 0 || config_num >= doc->ocg->num_configs)
		FUNC1(ctx, FZ_ERROR_GENERIC, "Invalid layer config number");

	ocprops = FUNC5(ctx, FUNC7(ctx, doc), "Root/OCProperties");
	if (!ocprops)
		return;

	obj = FUNC3(ctx, ocprops, FUNC0(Configs));
	if (FUNC6(ctx, obj))
		obj = FUNC2(ctx, obj, config_num);
	else if (config_num == 0)
		obj = FUNC3(ctx, ocprops, FUNC0(D));
	else
		FUNC1(ctx, FZ_ERROR_GENERIC, "Invalid layer config number");

	info->creator = FUNC4(ctx, obj, FUNC0(Creator), NULL);
	info->name = FUNC4(ctx, obj, FUNC0(Name), NULL);
}