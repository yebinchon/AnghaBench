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
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct expr {int dummy; } ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {TYPE_1__* ops; } ;
struct TYPE_19__ {struct TYPE_19__* next; scalar_t__ table_index; scalar_t__ col_count; TYPE_5__* view; } ;
struct TYPE_18__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_15__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_17__ {TYPE_10__ view; TYPE_4__* tables; int /*<<< orphan*/  table_count; int /*<<< orphan*/  col_count; struct expr* cond; TYPE_3__* db; } ;
struct TYPE_16__ {scalar_t__ (* get_dimensions ) (TYPE_5__*,int /*<<< orphan*/ *,scalar_t__*) ;int /*<<< orphan*/  (* delete ) (TYPE_5__*) ;} ;
typedef  TYPE_2__ MSIWHEREVIEW ;
typedef  int /*<<< orphan*/  MSIVIEW ;
typedef  TYPE_3__ MSIDATABASE ;
typedef  char* LPWSTR ;
typedef  TYPE_4__ JOINTABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_BAD_QUERY_SYNTAX ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_3__*,char*,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,struct expr*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_4__* FUNC7 (int) ; 
 TYPE_2__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (TYPE_5__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  where_ops ; 

UINT FUNC14( MSIDATABASE *db, MSIVIEW **view, LPWSTR tables,
                       struct expr *cond )
{
    MSIWHEREVIEW *wv = NULL;
    UINT r, valid = 0;
    WCHAR *ptr;

    FUNC2("(%s)\n", FUNC6(tables) );

    wv = FUNC8( sizeof *wv );
    if( !wv )
        return ERROR_FUNCTION_FAILED;
    
    /* fill the structure */
    wv->view.ops = &where_ops;
    FUNC10( &db->hdr );
    wv->db = db;
    wv->cond = cond;

    while (*tables)
    {
        JOINTABLE *table;

        if ((ptr = FUNC11(tables, ' ')))
            *ptr = '\0';

        table = FUNC7(sizeof(JOINTABLE));
        if (!table)
        {
            r = ERROR_OUTOFMEMORY;
            goto end;
        }

        r = FUNC1(db, tables, &table->view);
        if (r != ERROR_SUCCESS)
        {
            FUNC3("can't create table: %s\n", FUNC6(tables));
            FUNC9(table);
            r = ERROR_BAD_QUERY_SYNTAX;
            goto end;
        }

        r = table->view->ops->get_dimensions(table->view, NULL,
                                             &table->col_count);
        if (r != ERROR_SUCCESS)
        {
            FUNC0("can't get table dimensions\n");
            table->view->ops->delete(table->view);
            FUNC9(table);
            goto end;
        }

        wv->col_count += table->col_count;
        table->table_index = wv->table_count++;

        table->next = wv->tables;
        wv->tables = table;

        if (!ptr)
            break;

        tables = ptr + 1;
    }

    if( cond )
    {
        r = FUNC4( wv, cond, &valid );
        if( r != ERROR_SUCCESS )
            goto end;
        if( !valid ) {
            r = ERROR_FUNCTION_FAILED;
            goto end;
        }
    }

    *view = (MSIVIEW*) wv;

    return ERROR_SUCCESS;
end:
    FUNC5(&wv->view);

    return r;
}