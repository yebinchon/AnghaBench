#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct table {int num_cols; TYPE_1__* columns; } ;
struct record {size_t count; int /*<<< orphan*/  table; TYPE_3__* fields; } ;
struct field {int dummy; } ;
typedef  size_t UINT ;
struct TYPE_5__ {scalar_t__ ival; } ;
struct TYPE_6__ {TYPE_2__ u; int /*<<< orphan*/  vartype; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  vartype; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct table*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct record*) ; 

__attribute__((used)) static struct record *FUNC3( struct table *table )
{
    UINT i;
    struct record *record;

    if (!(record = FUNC1( sizeof(struct record) ))) return NULL;
    if (!(record->fields = FUNC1( table->num_cols * sizeof(struct field) )))
    {
        FUNC2( record );
        return NULL;
    }
    for (i = 0; i < table->num_cols; i++)
    {
        record->fields[i].type    = table->columns[i].type;
        record->fields[i].vartype = table->columns[i].vartype;
        record->fields[i].u.ival  = 0;
    }
    record->count = table->num_cols;
    record->table = FUNC0( table );
    return record;
}