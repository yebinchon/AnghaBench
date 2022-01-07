
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int column_info ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {int hdr; } ;
struct TYPE_17__ {int * ops; } ;
struct TYPE_19__ {TYPE_3__* sv; int bIsTemp; int * vals; TYPE_5__* db; TYPE_3__* table; TYPE_2__ view; } ;
struct TYPE_18__ {TYPE_1__* ops; } ;
struct TYPE_16__ {int (* delete ) (TYPE_3__*) ;} ;
typedef TYPE_3__ MSIVIEW ;
typedef TYPE_4__ MSIINSERTVIEW ;
typedef TYPE_5__ MSIDATABASE ;
typedef int LPCWSTR ;
typedef int BOOL ;


 scalar_t__ ERROR_BAD_QUERY_SYNTAX ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ SELECT_CreateView (TYPE_5__*,TYPE_3__**,TYPE_3__*,int *) ;
 scalar_t__ TABLE_CreateView (TYPE_5__*,int ,TYPE_3__**) ;
 int TRACE (char*,TYPE_4__*) ;
 scalar_t__ count_column_info (int *) ;
 int insert_ops ;
 TYPE_4__* msi_alloc_zero (int) ;
 int msiobj_addref (int *) ;
 int stub1 (TYPE_3__*) ;

UINT INSERT_CreateView( MSIDATABASE *db, MSIVIEW **view, LPCWSTR table,
                        column_info *columns, column_info *values, BOOL temp )
{
    MSIINSERTVIEW *iv = ((void*)0);
    UINT r;
    MSIVIEW *tv = ((void*)0), *sv = ((void*)0);

    TRACE("%p\n", iv );


    if ( count_column_info( columns ) != count_column_info(values) )
        return ERROR_BAD_QUERY_SYNTAX;

    r = TABLE_CreateView( db, table, &tv );
    if( r != ERROR_SUCCESS )
        return r;

    r = SELECT_CreateView( db, &sv, tv, columns );
    if( r != ERROR_SUCCESS )
    {
        if( tv )
            tv->ops->delete( tv );
        return r;
    }

    iv = msi_alloc_zero( sizeof *iv );
    if( !iv )
        return ERROR_FUNCTION_FAILED;


    iv->view.ops = &insert_ops;
    msiobj_addref( &db->hdr );
    iv->table = tv;
    iv->db = db;
    iv->vals = values;
    iv->bIsTemp = temp;
    iv->sv = sv;
    *view = (MSIVIEW*) iv;

    return ERROR_SUCCESS;
}
