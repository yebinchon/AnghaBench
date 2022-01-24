#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int is_default; int /*<<< orphan*/  parsed; } ;
typedef  TYPE_1__ WithClauseResult ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 size_t CompressSegmentBy ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

List *
FUNC2(WithClauseResult *parsed_options, Hypertable *hypertable)
{
	if (parsed_options[CompressSegmentBy].is_default == false)
	{
		Datum textarg = parsed_options[CompressSegmentBy].parsed;
		return FUNC1(FUNC0(textarg), hypertable);
	}
	else
		return NIL;
}