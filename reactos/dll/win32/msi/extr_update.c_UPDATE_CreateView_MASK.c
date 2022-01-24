#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct expr {int dummy; } ;
typedef  int /*<<< orphan*/  column_info ;
typedef  scalar_t__ UINT ;
struct TYPE_23__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_20__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_22__ {TYPE_3__* wv; int /*<<< orphan*/ * vals; TYPE_5__* db; TYPE_2__ view; } ;
struct TYPE_21__ {TYPE_1__* ops; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* delete ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ MSIVIEW ;
typedef  TYPE_4__ MSIUPDATEVIEW ;
typedef  TYPE_5__ MSIDATABASE ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_5__*,TYPE_3__**,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*,TYPE_3__**,int /*<<< orphan*/ ,struct expr*) ; 
 TYPE_4__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  update_ops ; 

UINT FUNC8( MSIDATABASE *db, MSIVIEW **view, LPWSTR table,
                        column_info *columns, struct expr *expr )
{
    MSIUPDATEVIEW *uv = NULL;
    UINT r;
    MSIVIEW *sv = NULL, *wv = NULL;

    FUNC2("%p\n", uv );

    if (expr)
        r = FUNC3( db, &wv, table, expr );
    else
        r = FUNC1( db, table, &wv );

    if( r != ERROR_SUCCESS )
        return r;

    /* then select the columns we want */
    r = FUNC0( db, &sv, wv, columns );
    if( r != ERROR_SUCCESS )
    {
        wv->ops->delete( wv );
        return r;
    }

    uv = FUNC4( sizeof *uv );
    if( !uv )
    {
        wv->ops->delete( wv );
        return ERROR_FUNCTION_FAILED;
    }

    /* fill the structure */
    uv->view.ops = &update_ops;
    FUNC5( &db->hdr );
    uv->db = db;
    uv->vals = columns;
    uv->wv = sv;
    *view = (MSIVIEW*) uv;

    return ERROR_SUCCESS;
}