
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct expr {int dummy; } ;
typedef int column_info ;
typedef scalar_t__ UINT ;
struct TYPE_23__ {int hdr; } ;
struct TYPE_20__ {int * ops; } ;
struct TYPE_22__ {TYPE_3__* wv; int * vals; TYPE_5__* db; TYPE_2__ view; } ;
struct TYPE_21__ {TYPE_1__* ops; } ;
struct TYPE_19__ {int (* delete ) (TYPE_3__*) ;} ;
typedef TYPE_3__ MSIVIEW ;
typedef TYPE_4__ MSIUPDATEVIEW ;
typedef TYPE_5__ MSIDATABASE ;
typedef int LPWSTR ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ SELECT_CreateView (TYPE_5__*,TYPE_3__**,TYPE_3__*,int *) ;
 scalar_t__ TABLE_CreateView (TYPE_5__*,int ,TYPE_3__**) ;
 int TRACE (char*,TYPE_4__*) ;
 scalar_t__ WHERE_CreateView (TYPE_5__*,TYPE_3__**,int ,struct expr*) ;
 TYPE_4__* msi_alloc_zero (int) ;
 int msiobj_addref (int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int update_ops ;

UINT UPDATE_CreateView( MSIDATABASE *db, MSIVIEW **view, LPWSTR table,
                        column_info *columns, struct expr *expr )
{
    MSIUPDATEVIEW *uv = ((void*)0);
    UINT r;
    MSIVIEW *sv = ((void*)0), *wv = ((void*)0);

    TRACE("%p\n", uv );

    if (expr)
        r = WHERE_CreateView( db, &wv, table, expr );
    else
        r = TABLE_CreateView( db, table, &wv );

    if( r != ERROR_SUCCESS )
        return r;


    r = SELECT_CreateView( db, &sv, wv, columns );
    if( r != ERROR_SUCCESS )
    {
        wv->ops->delete( wv );
        return r;
    }

    uv = msi_alloc_zero( sizeof *uv );
    if( !uv )
    {
        wv->ops->delete( wv );
        return ERROR_FUNCTION_FAILED;
    }


    uv->view.ops = &update_ops;
    msiobj_addref( &db->hdr );
    uv->db = db;
    uv->vals = columns;
    uv->wv = sv;
    *view = (MSIVIEW*) uv;

    return ERROR_SUCCESS;
}
