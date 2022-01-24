#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_8__ {size_t offset; } ;
struct TYPE_7__ {size_t col_count; size_t row_count; int /*<<< orphan*/ ** data; TYPE_2__* colinfo; } ;
typedef  TYPE_1__ MSITABLE ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  LONG_STR_BYTES ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,size_t*) ; 

__attribute__((used)) static void FUNC7( MSIDATABASE *db, LPCWSTR name )
{
    MSITABLE *table;
    UINT size, offset, old_count;
    UINT n;

    if (!(table = FUNC0( db, name ))) return;
    old_count = table->col_count;
    FUNC3( table->colinfo, table->col_count );
    FUNC2( table->colinfo );
    table->colinfo = NULL;

    FUNC6( db, name, &table->colinfo, &table->col_count );
    if (!table->col_count) return;

    size = FUNC5( db, table->colinfo, table->col_count, LONG_STR_BYTES );
    offset = table->colinfo[table->col_count - 1].offset;

    for ( n = 0; n < table->row_count; n++ )
    {
        table->data[n] = FUNC4( table->data[n], size );
        if (old_count < table->col_count)
            FUNC1( &table->data[n][offset], 0, size - offset );
    }
}