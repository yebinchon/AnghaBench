
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {TYPE_3__* table; } ;
struct TYPE_5__ {int (* get_column_info ) (TYPE_3__*,int ,int *,int *,int *,int *) ;} ;
typedef TYPE_2__ MSIDISTINCTVIEW ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,TYPE_2__*,int ,int *,int *,int *,int *) ;
 int stub1 (TYPE_3__*,int ,int *,int *,int *,int *) ;

__attribute__((used)) static UINT DISTINCT_get_column_info( struct tagMSIVIEW *view, UINT n, LPCWSTR *name,
                                      UINT *type, BOOL *temporary, LPCWSTR *table_name )
{
    MSIDISTINCTVIEW *dv = (MSIDISTINCTVIEW*)view;

    TRACE("%p %d %p %p %p %p\n", dv, n, name, type, temporary, table_name );

    if( !dv->table )
         return ERROR_FUNCTION_FAILED;

    return dv->table->ops->get_column_info( dv->table, n, name,
                                            type, temporary, table_name );
}
