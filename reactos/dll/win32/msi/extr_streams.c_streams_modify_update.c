
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int num_cols; } ;
typedef TYPE_1__ MSISTREAMSVIEW ;
typedef int MSIRECORD ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ STREAMS_set_row (struct tagMSIVIEW*,scalar_t__,int *,int) ;
 scalar_t__ streams_find_row (TYPE_1__*,int *,scalar_t__*) ;

__attribute__((used)) static UINT streams_modify_update(struct tagMSIVIEW *view, MSIRECORD *rec)
{
    MSISTREAMSVIEW *sv = (MSISTREAMSVIEW *)view;
    UINT r, row;

    r = streams_find_row(sv, rec, &row);
    if (r != ERROR_SUCCESS)
        return ERROR_FUNCTION_FAILED;

    return STREAMS_set_row( view, row, rec, (1 << sv->num_cols) - 1 );
}
