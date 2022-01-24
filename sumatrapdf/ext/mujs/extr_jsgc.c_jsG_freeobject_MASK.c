#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  actx; int /*<<< orphan*/  alloc; } ;
typedef  TYPE_5__ js_State ;
struct TYPE_18__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* finalize ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {int /*<<< orphan*/  head; } ;
struct TYPE_16__ {int /*<<< orphan*/  prog; TYPE_6__* source; } ;
struct TYPE_19__ {TYPE_3__ user; TYPE_2__ iter; TYPE_1__ r; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_4__ u; TYPE_11__* properties; } ;
typedef  TYPE_6__ js_Object ;
struct TYPE_15__ {scalar_t__ level; } ;

/* Variables and functions */
 scalar_t__ JS_CITERATOR ; 
 scalar_t__ JS_CREGEXP ; 
 scalar_t__ JS_CUSERDATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(js_State *J, js_Object *obj)
{
	if (obj->properties->level)
		FUNC1(J, obj->properties);
	if (obj->type == JS_CREGEXP) {
		FUNC2(J, obj->u.r.source);
		FUNC3(J->alloc, J->actx, obj->u.r.prog);
	}
	if (obj->type == JS_CITERATOR)
		FUNC0(J, obj->u.iter.head);
	if (obj->type == JS_CUSERDATA && obj->u.user.finalize)
		obj->u.user.finalize(J, obj->u.user.data);
	FUNC2(J, obj);
}