#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type_oid; int /*<<< orphan*/  typelen; int /*<<< orphan*/  typebyval; } ;
typedef  TYPE_1__ TypeInfoCache ;
struct TYPE_7__ {scalar_t__ type_oid; int is_null; int /*<<< orphan*/  datum; } ;
typedef  TYPE_2__ PolyDatum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) inline static void
FUNC3(TypeInfoCache *tic, PolyDatum input, PolyDatum *output)
{
	if (tic->type_oid != input.type_oid)
	{
		tic->type_oid = input.type_oid;
		FUNC2(tic->type_oid, &tic->typelen, &tic->typebyval);
	}
	*output = input;
	if (!input.is_null)
	{
		output->datum = FUNC1(input.datum, tic->typebyval, tic->typelen);
		output->is_null = false;
	}
	else
	{
		output->datum = FUNC0(NULL);
		output->is_null = true;
	}
}