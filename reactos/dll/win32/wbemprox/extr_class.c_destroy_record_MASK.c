#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  aval; struct record* sval; } ;
struct record {size_t count; int type; struct record* fields; TYPE_1__ u; int /*<<< orphan*/  table; } ;
typedef  size_t UINT ;

/* Variables and functions */
 int CIM_DATETIME ; 
 int CIM_FLAG_ARRAY ; 
 int CIM_STRING ; 
 int CIM_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct record*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( struct record *record )
{
    UINT i;

    if (!record) return;
    FUNC2( record->table );
    for (i = 0; i < record->count; i++)
    {
        if (record->fields[i].type == CIM_STRING || record->fields[i].type == CIM_DATETIME)
            FUNC1( record->fields[i].u.sval );
        else if (record->fields[i].type & CIM_FLAG_ARRAY)
            FUNC0( record->fields[i].u.aval, record->fields[i].type & CIM_TYPE_MASK );
    }
    FUNC1( record->fields );
    FUNC1( record );
}