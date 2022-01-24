#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  base; } ;
struct TYPE_8__ {int /*<<< orphan*/  base; } ;
struct TYPE_7__ {int type; } ;
typedef  int /*<<< orphan*/  DimensionRestrictInfo ;
typedef  TYPE_1__ Dimension ;

/* Variables and functions */
#define  DIMENSION_TYPE_CLOSED 129 
#define  DIMENSION_TYPE_OPEN 128 
 int /*<<< orphan*/  ERROR ; 
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static DimensionRestrictInfo *
FUNC3(Dimension *d)
{
	switch (d->type)
	{
		case DIMENSION_TYPE_OPEN:
			return &FUNC1(d)->base;
		case DIMENSION_TYPE_CLOSED:
			return &FUNC0(d)->base;
		default:
			FUNC2(ERROR, "unknown dimension type");
			return NULL;
	}
}