
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int hdr; } ;
struct TYPE_15__ {int db; } ;
struct TYPE_14__ {TYPE_1__* ops; } ;
struct TYPE_13__ {int (* delete ) (TYPE_2__*) ;} ;
typedef TYPE_2__ MSIVIEW ;
typedef TYPE_3__ MSITABLEVIEW ;
typedef TYPE_4__ MSIRECORD ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 TYPE_4__* MSI_CreateRecord (int) ;
 int MSI_RecordSetInteger (TYPE_4__*,int,scalar_t__) ;
 int MSI_RecordSetStringW (TYPE_4__*,int,int ) ;
 scalar_t__ TABLE_CreateView (int ,int ,TYPE_2__**) ;
 scalar_t__ TABLE_delete_row (TYPE_2__*,scalar_t__) ;
 scalar_t__ msi_table_find_row (TYPE_3__*,TYPE_4__*,scalar_t__*,int *) ;
 int msi_update_table_columns (int ,int ) ;
 int msiobj_release (int *) ;
 int stub1 (TYPE_2__*) ;
 int szColumns ;

__attribute__((used)) static UINT TABLE_remove_column(struct tagMSIVIEW *view, LPCWSTR table, UINT number)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    MSIRECORD *rec = ((void*)0);
    MSIVIEW *columns = ((void*)0);
    UINT row, r;

    rec = MSI_CreateRecord(2);
    if (!rec)
        return ERROR_OUTOFMEMORY;

    MSI_RecordSetStringW(rec, 1, table);
    MSI_RecordSetInteger(rec, 2, number);

    r = TABLE_CreateView(tv->db, szColumns, &columns);
    if (r != ERROR_SUCCESS)
    {
        msiobj_release(&rec->hdr);
        return r;
    }

    r = msi_table_find_row((MSITABLEVIEW *)columns, rec, &row, ((void*)0));
    if (r != ERROR_SUCCESS)
        goto done;

    r = TABLE_delete_row(columns, row);
    if (r != ERROR_SUCCESS)
        goto done;

    msi_update_table_columns(tv->db, table);

done:
    msiobj_release(&rec->hdr);
    columns->ops->delete(columns);
    return r;
}
