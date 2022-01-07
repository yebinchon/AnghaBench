
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {int hdr; } ;
struct TYPE_12__ {scalar_t__ col_count; TYPE_1__* colinfo; } ;
struct TYPE_11__ {int db; int view; } ;
struct TYPE_10__ {int ref_count; int colname; } ;
typedef TYPE_2__ MSITABLEVIEW ;
typedef TYPE_3__ MSITABLE ;
typedef TYPE_4__ MSIRECORD ;
typedef int LPCWSTR ;
typedef int BOOL ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int InterlockedIncrement (int *) ;
 TYPE_4__* MSI_CreateRecord (int) ;
 int MSI_RecordSetInteger (TYPE_4__*,int,scalar_t__) ;
 int MSI_RecordSetStringW (TYPE_4__*,int,int ) ;
 scalar_t__ TABLE_insert_row (int *,TYPE_4__*,int,int ) ;
 TYPE_3__* find_cached_table (int ,int ) ;
 int msi_update_table_columns (int ,int ) ;
 int msiobj_release (int *) ;
 int strcmpW (int ,int ) ;

__attribute__((used)) static UINT TABLE_add_column(struct tagMSIVIEW *view, LPCWSTR table, UINT number,
                             LPCWSTR column, UINT type, BOOL hold)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    MSITABLE *msitable;
    MSIRECORD *rec;
    UINT r, i;

    rec = MSI_CreateRecord(4);
    if (!rec)
        return ERROR_OUTOFMEMORY;

    MSI_RecordSetStringW(rec, 1, table);
    MSI_RecordSetInteger(rec, 2, number);
    MSI_RecordSetStringW(rec, 3, column);
    MSI_RecordSetInteger(rec, 4, type);

    r = TABLE_insert_row(&tv->view, rec, -1, FALSE);
    if (r != ERROR_SUCCESS)
        goto done;

    msi_update_table_columns(tv->db, table);

    if (!hold)
        goto done;

    msitable = find_cached_table(tv->db, table);
    for (i = 0; i < msitable->col_count; i++)
    {
        if (!strcmpW( msitable->colinfo[i].colname, column ))
        {
            InterlockedIncrement(&msitable->colinfo[i].ref_count);
            break;
        }
    }

done:
    msiobj_release(&rec->hdr);
    return r;
}
