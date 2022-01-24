#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_7__ {int /*<<< orphan*/  root; } ;
struct TYPE_5__ {int /*<<< orphan*/  numeric; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ val; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Numeric ;
typedef  TYPE_2__ JsonbValue ;
typedef  TYPE_3__ Jsonb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ jbvNumeric ; 
 int /*<<< orphan*/  jsonb_in ; 
 int /*<<< orphan*/  numeric_int4 ; 

__attribute__((used)) static void
FUNC7(char *params, int32 *ttl, Oid *user_oid)
{
	Jsonb *jb = (Jsonb *) FUNC3(FUNC4(jsonb_in, FUNC1(params)));
	JsonbValue *ttl_v = FUNC6(&jb->root, 0);
	JsonbValue *user_v = FUNC6(&jb->root, 1);
	Numeric ttl_numeric;
	Numeric user_numeric;

	FUNC0(ttl_v->type == jbvNumeric);
	FUNC0(user_v->type == jbvNumeric);

	ttl_numeric = ttl_v->val.numeric;
	user_numeric = user_v->val.numeric;
	*ttl = FUNC2(FUNC4(numeric_int4, FUNC5(ttl_numeric)));
	*user_oid =
		(Oid) FUNC2(FUNC4(numeric_int4, FUNC5(user_numeric)));
}