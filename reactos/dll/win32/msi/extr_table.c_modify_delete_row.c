
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
typedef int MSITABLEVIEW ;
typedef int MSIRECORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ TABLE_delete_row (struct tagMSIVIEW*,scalar_t__) ;
 scalar_t__ msi_table_find_row (int *,int *,scalar_t__*,int *) ;

__attribute__((used)) static UINT modify_delete_row( struct tagMSIVIEW *view, MSIRECORD *rec )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW *)view;
    UINT row, r;

    r = msi_table_find_row(tv, rec, &row, ((void*)0));
    if (r != ERROR_SUCCESS)
        return r;

    return TABLE_delete_row(view, row);
}
