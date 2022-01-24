#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int /*<<< orphan*/  tables; int /*<<< orphan*/  storage; } ;
struct TYPE_12__ {int /*<<< orphan*/  entry; scalar_t__ col_count; int /*<<< orphan*/ * colinfo; int /*<<< orphan*/  persistent; int /*<<< orphan*/  name; int /*<<< orphan*/ * data_persistent; int /*<<< orphan*/ * data; scalar_t__ row_count; } ;
typedef  TYPE_1__ MSITABLE ;
typedef  TYPE_2__ MSIDATABASE ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSICONDITION_NONE ; 
 int /*<<< orphan*/  MSICONDITION_TRUE ; 
 TYPE_1__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szColumns ; 
 int /*<<< orphan*/  szTables ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*) ; 

__attribute__((used)) static UINT FUNC9( MSIDATABASE *db, LPCWSTR name, MSITABLE **table_ret )
{
    MSITABLE *table;
    UINT r;

    /* first, see if the table is cached */
    table = FUNC0( db, name );
    if (table)
    {
        *table_ret = table;
        return ERROR_SUCCESS;
    }

    /* nonexistent tables should be interpreted as empty tables */
    table = FUNC5( sizeof(MSITABLE) + FUNC4( name ) * sizeof(WCHAR) );
    if (!table)
        return ERROR_FUNCTION_FAILED;

    table->row_count = 0;
    table->data = NULL;
    table->data_persistent = NULL;
    table->colinfo = NULL;
    table->col_count = 0;
    table->persistent = MSICONDITION_TRUE;
    FUNC3( table->name, name );

    if (!FUNC7( name, szTables ) || !FUNC7( name, szColumns ))
        table->persistent = MSICONDITION_NONE;

    r = FUNC8( db, name, &table->colinfo, &table->col_count );
    if (r != ERROR_SUCCESS)
    {
        FUNC1( table );
        return r;
    }
    r = FUNC6( db, table, db->storage );
    if (r != ERROR_SUCCESS)
    {
        FUNC1( table );
        return r;
    }
    FUNC2( &db->tables, &table->entry );
    *table_ret = table;
    return ERROR_SUCCESS;
}