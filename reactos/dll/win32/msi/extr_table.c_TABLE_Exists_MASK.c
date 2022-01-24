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
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  strings; } ;
struct TYPE_6__ {scalar_t__ row_count; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ MSITABLE ;
typedef  TYPE_2__ MSIDATABASE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LONG_STR_BYTES ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szColumns ; 
 int /*<<< orphan*/  szStorages ; 
 int /*<<< orphan*/  szStreams ; 
 int /*<<< orphan*/  szTables ; 

BOOL FUNC7( MSIDATABASE *db, LPCWSTR name )
{
    UINT r, table_id, i;
    MSITABLE *table;

    if( !FUNC6( name, szTables ) || !FUNC6( name, szColumns ) ||
        !FUNC6( name, szStreams ) || !FUNC6( name, szStorages ) )
        return TRUE;

    r = FUNC4( db->strings, name, -1, &table_id );
    if( r != ERROR_SUCCESS )
    {
        FUNC1("Couldn't find id for %s\n", FUNC2(name));
        return FALSE;
    }

    r = FUNC3( db, szTables, &table );
    if( r != ERROR_SUCCESS )
    {
        FUNC0("table %s not available\n", FUNC2(szTables));
        return FALSE;
    }

    for( i = 0; i < table->row_count; i++ )
    {
        if( FUNC5( table->data, i, 0, LONG_STR_BYTES ) == table_id )
            return TRUE;
    }

    return FALSE;
}