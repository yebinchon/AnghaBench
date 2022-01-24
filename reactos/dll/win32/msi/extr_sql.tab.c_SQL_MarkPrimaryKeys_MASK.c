#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  column; struct TYPE_6__* next; } ;
typedef  TYPE_1__ column_info ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MSITYPE_KEY ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,TYPE_1__*,int) ; 

__attribute__((used)) static BOOL FUNC2( column_info **cols,
                                 column_info *keys )
{
    column_info *k;
    BOOL found = TRUE;
    int count;

    for( k = keys, count = 0; k && found; k = k->next, count++ )
    {
        column_info *c;
        int idx;

        found = FALSE;
        for( c = *cols, idx = 0; c && !found; c = c->next, idx++ )
        {
            if( FUNC0( k->column, c->column ) )
                continue;
            c->type |= MSITYPE_KEY;
            found = TRUE;
            if (idx != count)
                FUNC1( cols, c, count );
        }
    }

    return found;
}