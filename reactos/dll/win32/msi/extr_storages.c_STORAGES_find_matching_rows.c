
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ num_rows; TYPE_1__** storages; } ;
struct TYPE_3__ {scalar_t__ str_index; } ;
typedef TYPE_2__ MSISTORAGESVIEW ;
typedef int MSIITERHANDLE ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ NUM_STORAGES_COLS ;
 scalar_t__ PtrToUlong (int ) ;
 int TRACE (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int UlongToPtr (scalar_t__) ;

__attribute__((used)) static UINT STORAGES_find_matching_rows(struct tagMSIVIEW *view, UINT col,
                                       UINT val, UINT *row, MSIITERHANDLE *handle)
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;
    UINT index = PtrToUlong(*handle);

    TRACE("(%d, %d): %d\n", *row, col, val);

    if (col == 0 || col > NUM_STORAGES_COLS)
        return ERROR_INVALID_PARAMETER;

    while (index < sv->num_rows)
    {
        if (sv->storages[index]->str_index == val)
        {
            *row = index;
            break;
        }

        index++;
    }

    *handle = UlongToPtr(++index);
    if (index >= sv->num_rows)
        return ERROR_NO_MORE_ITEMS;

    return ERROR_SUCCESS;
}
