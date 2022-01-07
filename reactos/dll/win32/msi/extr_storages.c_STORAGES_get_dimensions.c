
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_2__ {int num_rows; } ;
typedef TYPE_1__ MSISTORAGESVIEW ;


 int ERROR_SUCCESS ;
 int NUM_STORAGES_COLS ;
 int TRACE (char*,struct tagMSIVIEW*,int *,int *) ;

__attribute__((used)) static UINT STORAGES_get_dimensions(struct tagMSIVIEW *view, UINT *rows, UINT *cols)
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;

    TRACE("(%p, %p, %p)\n", view, rows, cols);

    if (cols) *cols = NUM_STORAGES_COLS;
    if (rows) *rows = sv->num_rows;

    return ERROR_SUCCESS;
}
