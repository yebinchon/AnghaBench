
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {TYPE_1__* ops; } ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ col_count; scalar_t__ row_count; int tables; } ;
struct TYPE_3__ {scalar_t__ (* fetch_int ) (struct tagMSIVIEW*,scalar_t__,scalar_t__,scalar_t__*) ;} ;
typedef TYPE_2__ MSIWHEREVIEW ;
typedef int MSIITERHANDLE ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PtrToUlong (int ) ;
 int TRACE (char*,struct tagMSIVIEW*,scalar_t__,scalar_t__,int ) ;
 int UlongToPtr (scalar_t__) ;
 scalar_t__ stub1 (struct tagMSIVIEW*,scalar_t__,scalar_t__,scalar_t__*) ;

__attribute__((used)) static UINT WHERE_find_matching_rows( struct tagMSIVIEW *view, UINT col,
    UINT val, UINT *row, MSIITERHANDLE *handle )
{
    MSIWHEREVIEW *wv = (MSIWHEREVIEW*)view;
    UINT i, row_value;

    TRACE("%p, %d, %u, %p\n", view, col, val, *handle);

    if (!wv->tables)
         return ERROR_FUNCTION_FAILED;

    if (col == 0 || col > wv->col_count)
        return ERROR_INVALID_PARAMETER;

    for (i = PtrToUlong(*handle); i < wv->row_count; i++)
    {
        if (view->ops->fetch_int( view, i, col, &row_value ) != ERROR_SUCCESS)
            continue;

        if (row_value == val)
        {
            *row = i;
            *handle = UlongToPtr(i + 1);
            return ERROR_SUCCESS;
        }
    }

    return ERROR_NO_MORE_ITEMS;
}
