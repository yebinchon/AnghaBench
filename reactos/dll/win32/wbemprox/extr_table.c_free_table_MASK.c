#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct table {int flags; int /*<<< orphan*/  entry; struct table* data; int /*<<< orphan*/  num_cols; scalar_t__ columns; scalar_t__ name; } ;
struct column {int dummy; } ;
typedef  struct table WCHAR ;

/* Variables and functions */
 int TABLE_FLAG_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,struct table*) ; 
 int /*<<< orphan*/  FUNC1 (struct table*) ; 
 int /*<<< orphan*/  FUNC2 (struct column*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct table*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( struct table *table )
{
    if (!table) return;

    FUNC1( table );
    if (table->flags & TABLE_FLAG_DYNAMIC)
    {
        FUNC0("destroying %p\n", table);
        FUNC3( (WCHAR *)table->name );
        FUNC2( (struct column *)table->columns, table->num_cols );
        FUNC3( table->data );
        FUNC4( &table->entry );
        FUNC3( table );
    }
}