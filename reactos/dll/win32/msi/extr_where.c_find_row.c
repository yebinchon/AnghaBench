
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t row_count; TYPE_1__** reorder; } ;
struct TYPE_4__ {size_t* values; } ;
typedef TYPE_2__ MSIWHEREVIEW ;


 size_t ERROR_NO_MORE_ITEMS ;
 size_t ERROR_SUCCESS ;

__attribute__((used)) static inline UINT find_row(MSIWHEREVIEW *wv, UINT row, UINT *(values[]))
{
    if (row >= wv->row_count)
        return ERROR_NO_MORE_ITEMS;

    *values = wv->reorder[row]->values;

    return ERROR_SUCCESS;
}
