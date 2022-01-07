
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_12__ {TYPE_1__* ops; } ;
struct TYPE_11__ {size_t table_index; TYPE_4__* view; } ;
struct TYPE_10__ {int tables; } ;
struct TYPE_9__ {scalar_t__ (* fetch_int ) (TYPE_4__*,scalar_t__,scalar_t__,scalar_t__*) ;} ;
typedef TYPE_2__ MSIWHEREVIEW ;
typedef TYPE_3__ JOINTABLE ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 int TRACE (char*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ find_row (TYPE_2__*,scalar_t__,scalar_t__**) ;
 TYPE_3__* find_table (TYPE_2__*,scalar_t__,scalar_t__*) ;
 scalar_t__ stub1 (TYPE_4__*,scalar_t__,scalar_t__,scalar_t__*) ;

__attribute__((used)) static UINT WHERE_fetch_int( struct tagMSIVIEW *view, UINT row, UINT col, UINT *val )
{
    MSIWHEREVIEW *wv = (MSIWHEREVIEW*)view;
    JOINTABLE *table;
    UINT *rows;
    UINT r;

    TRACE("%p %d %d %p\n", wv, row, col, val );

    if( !wv->tables )
        return ERROR_FUNCTION_FAILED;

    r = find_row(wv, row, &rows);
    if (r != ERROR_SUCCESS)
        return r;

    table = find_table(wv, col, &col);
    if (!table)
        return ERROR_FUNCTION_FAILED;

    return table->view->ops->fetch_int(table->view, rows[table->table_index], col, val);
}
