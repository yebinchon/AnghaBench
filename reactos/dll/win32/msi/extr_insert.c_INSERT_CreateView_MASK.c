#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  column_info ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_17__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_19__ {TYPE_3__* sv; int /*<<< orphan*/  bIsTemp; int /*<<< orphan*/ * vals; TYPE_5__* db; TYPE_3__* table; TYPE_2__ view; } ;
struct TYPE_18__ {TYPE_1__* ops; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* delete ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ MSIVIEW ;
typedef  TYPE_4__ MSIINSERTVIEW ;
typedef  TYPE_5__ MSIDATABASE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_BAD_QUERY_SYNTAX ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_5__*,TYPE_3__**,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  insert_ops ; 
 TYPE_4__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

UINT FUNC7( MSIDATABASE *db, MSIVIEW **view, LPCWSTR table,
                        column_info *columns, column_info *values, BOOL temp )
{
    MSIINSERTVIEW *iv = NULL;
    UINT r;
    MSIVIEW *tv = NULL, *sv = NULL;

    FUNC2("%p\n", iv );

    /* there should be one value for each column */
    if ( FUNC3( columns ) != FUNC3(values) )
        return ERROR_BAD_QUERY_SYNTAX;

    r = FUNC1( db, table, &tv );
    if( r != ERROR_SUCCESS )
        return r;

    r = FUNC0( db, &sv, tv, columns );
    if( r != ERROR_SUCCESS )
    {
        if( tv )
            tv->ops->delete( tv );
        return r;
    }

    iv = FUNC4( sizeof *iv );
    if( !iv )
        return ERROR_FUNCTION_FAILED;

    /* fill the structure */
    iv->view.ops = &insert_ops;
    FUNC5( &db->hdr );
    iv->table = tv;
    iv->db = db;
    iv->vals = values;
    iv->bIsTemp = temp;
    iv->sv = sv;
    *view = (MSIVIEW*) iv;

    return ERROR_SUCCESS;
}