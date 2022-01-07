
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_11__ {TYPE_1__* ops; } ;
struct TYPE_10__ {TYPE_4__* view; } ;
struct TYPE_9__ {int tables; } ;
struct TYPE_8__ {int (* get_column_info ) (TYPE_4__*,int ,int *,int *,int *,int *) ;} ;
typedef TYPE_2__ MSIWHEREVIEW ;
typedef int LPCWSTR ;
typedef TYPE_3__ JOINTABLE ;
typedef int BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,TYPE_2__*,int ,int *,int *,int *,int *) ;
 TYPE_3__* find_table (TYPE_2__*,int ,int *) ;
 int stub1 (TYPE_4__*,int ,int *,int *,int *,int *) ;

__attribute__((used)) static UINT WHERE_get_column_info( struct tagMSIVIEW *view, UINT n, LPCWSTR *name,
                                   UINT *type, BOOL *temporary, LPCWSTR *table_name )
{
    MSIWHEREVIEW *wv = (MSIWHEREVIEW*)view;
    JOINTABLE *table;

    TRACE("%p %d %p %p %p %p\n", wv, n, name, type, temporary, table_name );

    if(!wv->tables)
         return ERROR_FUNCTION_FAILED;

    table = find_table(wv, n, &n);
    if (!table)
        return ERROR_FUNCTION_FAILED;

    return table->view->ops->get_column_info(table->view, n, name,
                                            type, temporary, table_name);
}
