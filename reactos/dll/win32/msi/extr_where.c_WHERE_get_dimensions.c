
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_3__ {int col_count; int row_count; int reorder; int tables; } ;
typedef TYPE_1__ MSIWHEREVIEW ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_1__*,int *,int *) ;

__attribute__((used)) static UINT WHERE_get_dimensions( struct tagMSIVIEW *view, UINT *rows, UINT *cols )
{
    MSIWHEREVIEW *wv = (MSIWHEREVIEW*)view;

    TRACE("%p %p %p\n", wv, rows, cols );

    if(!wv->tables)
         return ERROR_FUNCTION_FAILED;

    if (rows)
    {
        if (!wv->reorder)
            return ERROR_FUNCTION_FAILED;
        *rows = wv->row_count;
    }

    if (cols)
        *cols = wv->col_count;

    return ERROR_SUCCESS;
}
