
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
typedef int MSISTORAGESVIEW ;
typedef int MSIRECORD ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ STORAGES_set_row (struct tagMSIVIEW*,scalar_t__,int *,int ) ;
 scalar_t__ storages_find_row (int *,int *,scalar_t__*) ;

__attribute__((used)) static UINT storages_modify_update(struct tagMSIVIEW *view, MSIRECORD *rec)
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;
    UINT r, row;

    r = storages_find_row(sv, rec, &row);
    if (r != ERROR_SUCCESS)
        return ERROR_FUNCTION_FAILED;

    return STORAGES_set_row(view, row, rec, 0);
}
