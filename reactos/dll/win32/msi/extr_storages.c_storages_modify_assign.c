
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
typedef int MSISTORAGESVIEW ;
typedef int MSIRECORD ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ STORAGES_insert_row (struct tagMSIVIEW*,int *,int,int ) ;
 scalar_t__ storages_find_row (int *,int *,scalar_t__*) ;
 scalar_t__ storages_modify_update (struct tagMSIVIEW*,int *) ;

__attribute__((used)) static UINT storages_modify_assign(struct tagMSIVIEW *view, MSIRECORD *rec)
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;
    UINT r, row;

    r = storages_find_row(sv, rec, &row);
    if (r == ERROR_SUCCESS)
        return storages_modify_update(view, rec);

    return STORAGES_insert_row(view, rec, -1, FALSE);
}
