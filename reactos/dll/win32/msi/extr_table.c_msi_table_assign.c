
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int num_cols; int table; } ;
typedef TYPE_1__ MSITABLEVIEW ;
typedef int MSIRECORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ TABLE_insert_row (struct tagMSIVIEW*,int *,int,int ) ;
 scalar_t__ TABLE_set_row (struct tagMSIVIEW*,scalar_t__,int *,int) ;
 scalar_t__ msi_table_find_row (TYPE_1__*,int *,scalar_t__*,int *) ;

__attribute__((used)) static UINT msi_table_assign(struct tagMSIVIEW *view, MSIRECORD *rec)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW *)view;
    UINT r, row;

    if (!tv->table)
        return ERROR_INVALID_PARAMETER;

    r = msi_table_find_row(tv, rec, &row, ((void*)0));
    if (r == ERROR_SUCCESS)
        return TABLE_set_row(view, row, rec, (1 << tv->num_cols) - 1);
    else
        return TABLE_insert_row( view, rec, -1, FALSE );
}
