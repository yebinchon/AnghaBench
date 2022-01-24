#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  scalar_t__ UINT ;
struct TYPE_18__ {int number; int /*<<< orphan*/ * hash_table; scalar_t__ ref_count; scalar_t__ offset; scalar_t__ type; void* colname; void* tablename; } ;
struct TYPE_17__ {int /*<<< orphan*/  strings; } ;
struct TYPE_16__ {scalar_t__ row_count; TYPE_1__* colinfo; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_2__ MSITABLE ;
typedef  TYPE_3__ MSIDATABASE ;
typedef  TYPE_4__ MSICOLUMNINFO ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int LONG_STR_BYTES ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 void* FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  szColumns ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_4__*,scalar_t__) ; 

__attribute__((used)) static UINT FUNC12( MSIDATABASE *db, LPCWSTR szTableName, MSICOLUMNINFO *colinfo, UINT *sz )
{
    UINT r, i, n = 0, table_id, count, maxcount = *sz;
    MSITABLE *table = NULL;

    FUNC1("%s\n", FUNC3(szTableName));

    /* first check if there is a default table with that name */
    r = FUNC4( db, szTableName, colinfo, sz );
    if (r == ERROR_SUCCESS && *sz)
        return r;

    r = FUNC5( db, szColumns, &table );
    if (r != ERROR_SUCCESS)
    {
        FUNC0("couldn't load _Columns table\n");
        return ERROR_FUNCTION_FAILED;
    }

    /* convert table and column names to IDs from the string table */
    r = FUNC8( db->strings, szTableName, -1, &table_id );
    if (r != ERROR_SUCCESS)
    {
        FUNC2("Couldn't find id for %s\n", FUNC3(szTableName));
        return r;
    }
    FUNC1("Table id is %d, row count is %d\n", table_id, table->row_count);

    /* Note: _Columns table doesn't have non-persistent data */

    /* if maxcount is non-zero, assume it's exactly right for this table */
    if (colinfo) FUNC6( colinfo, 0, maxcount * sizeof(*colinfo) );
    count = table->row_count;
    for (i = 0; i < count; i++)
    {
        if (FUNC10( table->data, i, 0, LONG_STR_BYTES) != table_id) continue;
        if (colinfo)
        {
            UINT id = FUNC10( table->data, i, table->colinfo[2].offset, LONG_STR_BYTES );
            UINT col = FUNC10( table->data, i, table->colinfo[1].offset, sizeof(USHORT) ) - (1 << 15);

            /* check the column number is in range */
            if (col < 1 || col > maxcount)
            {
                FUNC0("column %d out of range (maxcount: %d)\n", col, maxcount);
                continue;
            }
            /* check if this column was already set */
            if (colinfo[col - 1].number)
            {
                FUNC0("duplicate column %d\n", col);
                continue;
            }
            colinfo[col - 1].tablename = FUNC9( db->strings, table_id, NULL );
            colinfo[col - 1].number = col;
            colinfo[col - 1].colname = FUNC9( db->strings, id, NULL );
            colinfo[col - 1].type = FUNC10( table->data, i, table->colinfo[3].offset,
                                                    sizeof(USHORT) ) - (1 << 15);
            colinfo[col - 1].offset = 0;
            colinfo[col - 1].ref_count = 0;
            colinfo[col - 1].hash_table = NULL;
        }
        n++;
    }
    FUNC1("%s has %d columns\n", FUNC3(szTableName), n);

    if (colinfo && n != maxcount)
    {
        FUNC0("missing column in table %s\n", FUNC3(szTableName));
        FUNC7( colinfo, maxcount );
        return ERROR_FUNCTION_FAILED;
    }
    FUNC11( db, colinfo, n );
    *sz = n;
    return ERROR_SUCCESS;
}