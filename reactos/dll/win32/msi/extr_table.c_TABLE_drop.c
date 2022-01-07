
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {size_t col_count; int entry; TYPE_1__* colinfo; } ;
struct TYPE_18__ {int hdr; } ;
struct TYPE_17__ {TYPE_9__* table; int db; int name; } ;
struct TYPE_16__ {TYPE_2__* ops; } ;
struct TYPE_15__ {int (* delete ) (TYPE_3__*) ;} ;
struct TYPE_14__ {int number; int tablename; } ;
typedef TYPE_3__ MSIVIEW ;
typedef TYPE_4__ MSITABLEVIEW ;
typedef TYPE_5__ MSIRECORD ;
typedef size_t INT ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 TYPE_5__* MSI_CreateRecord (int) ;
 int MSI_RecordSetStringW (TYPE_5__*,int,int ) ;
 scalar_t__ TABLE_CreateView (int ,int ,TYPE_3__**) ;
 scalar_t__ TABLE_delete_row (TYPE_3__*,scalar_t__) ;
 scalar_t__ TABLE_remove_column (struct tagMSIVIEW*,int ,int ) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int ) ;
 int free_table (TYPE_9__*) ;
 int list_remove (int *) ;
 scalar_t__ msi_table_find_row (TYPE_4__*,TYPE_5__*,scalar_t__*,int *) ;
 int msiobj_release (int *) ;
 int stub1 (TYPE_3__*) ;
 int szTables ;

__attribute__((used)) static UINT TABLE_drop(struct tagMSIVIEW *view)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    MSIVIEW *tables = ((void*)0);
    MSIRECORD *rec = ((void*)0);
    UINT r, row;
    INT i;

    TRACE("dropping table %s\n", debugstr_w(tv->name));

    for (i = tv->table->col_count - 1; i >= 0; i--)
    {
        r = TABLE_remove_column(view, tv->table->colinfo[i].tablename,
                                tv->table->colinfo[i].number);
        if (r != ERROR_SUCCESS)
            return r;
    }

    rec = MSI_CreateRecord(1);
    if (!rec)
        return ERROR_OUTOFMEMORY;

    MSI_RecordSetStringW(rec, 1, tv->name);

    r = TABLE_CreateView(tv->db, szTables, &tables);
    if (r != ERROR_SUCCESS)
    {
        msiobj_release(&rec->hdr);
        return r;
    }

    r = msi_table_find_row((MSITABLEVIEW *)tables, rec, &row, ((void*)0));
    if (r != ERROR_SUCCESS)
        goto done;

    r = TABLE_delete_row(tables, row);
    if (r != ERROR_SUCCESS)
        goto done;

    list_remove(&tv->table->entry);
    free_table(tv->table);

done:
    msiobj_release(&rec->hdr);
    tables->ops->delete(tables);

    return r;
}
