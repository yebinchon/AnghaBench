#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ kind; } ;
typedef  TYPE_1__ pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_13__ {int /*<<< orphan*/ * doc; } ;
struct TYPE_12__ {int /*<<< orphan*/ * doc; } ;
struct TYPE_11__ {int /*<<< orphan*/ * doc; } ;

/* Variables and functions */
 TYPE_8__* FUNC0 (TYPE_1__*) ; 
 TYPE_6__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ PDF_ARRAY ; 
 scalar_t__ PDF_DICT ; 
 scalar_t__ PDF_INDIRECT ; 
 TYPE_1__* PDF_LIMIT ; 
 TYPE_3__* FUNC2 (TYPE_1__*) ; 

pdf_document *FUNC3(fz_context *ctx, pdf_obj *obj)
{
	if (obj < PDF_LIMIT)
		return NULL;
	if (obj->kind == PDF_INDIRECT)
		return FUNC2(obj)->doc;
	if (obj->kind == PDF_ARRAY)
		return FUNC0(obj)->doc;
	if (obj->kind == PDF_DICT)
		return FUNC1(obj)->doc;
	return NULL;
}