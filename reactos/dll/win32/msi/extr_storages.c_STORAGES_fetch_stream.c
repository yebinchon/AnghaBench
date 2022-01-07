
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_2__ {scalar_t__ num_rows; } ;
typedef TYPE_1__ MSISTORAGESVIEW ;
typedef int IStream ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_INVALID_DATA ;
 int TRACE (char*,struct tagMSIVIEW*,scalar_t__,scalar_t__,int **) ;

__attribute__((used)) static UINT STORAGES_fetch_stream(struct tagMSIVIEW *view, UINT row, UINT col, IStream **stm)
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;

    TRACE("(%p, %d, %d, %p)\n", view, row, col, stm);

    if (row >= sv->num_rows)
        return ERROR_FUNCTION_FAILED;

    return ERROR_INVALID_DATA;
}
