#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ kind; } ;
typedef  TYPE_2__ pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {float f; float i; } ;
struct TYPE_10__ {TYPE_1__ u; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ PDF_INT ; 
 TYPE_2__* PDF_LIMIT ; 
 scalar_t__ PDF_REAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

float FUNC2(fz_context *ctx, pdf_obj *obj)
{
	FUNC1(obj);
	if (obj < PDF_LIMIT)
		return 0;
	if (obj->kind == PDF_REAL)
		return FUNC0(obj)->u.f;
	if (obj->kind == PDF_INT)
		return FUNC0(obj)->u.i;
	return 0;
}