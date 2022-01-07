
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_26__ {int db; int curview; int merge; TYPE_3__* curtable; } ;
struct TYPE_25__ {int entry; int data; } ;
struct TYPE_24__ {int rows; int numconflicts; int name; } ;
struct TYPE_23__ {int hdr; } ;
struct TYPE_22__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIQUERY ;
typedef TYPE_3__ MERGETABLE ;
typedef TYPE_4__ MERGEROW ;
typedef TYPE_5__ MERGEDATA ;
typedef TYPE_4__* LPWSTR ;
typedef TYPE_5__* LPVOID ;


 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int MSI_CloneRecord (TYPE_1__*) ;
 scalar_t__ MSI_DatabaseOpenViewW (int ,TYPE_4__*,TYPE_2__**) ;
 int MSI_RecordsAreEqual (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ MSI_ViewExecute (TYPE_2__*,int *) ;
 scalar_t__ MSI_ViewFetch (TYPE_2__*,TYPE_1__**) ;
 scalar_t__ TABLE_Exists (int ,int ) ;
 TYPE_4__* create_diff_row_query (int ,int ,int ,TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 TYPE_4__* msi_alloc (int) ;
 int msi_free (TYPE_4__*) ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT merge_diff_row(MSIRECORD *rec, LPVOID param)
{
    MERGEDATA *data = param;
    MERGETABLE *table = data->curtable;
    MERGEROW *mergerow;
    MSIQUERY *dbview = ((void*)0);
    MSIRECORD *row = ((void*)0);
    LPWSTR query = ((void*)0);
    UINT r = ERROR_SUCCESS;

    if (TABLE_Exists(data->db, table->name))
    {
        query = create_diff_row_query(data->merge, data->curview, table->name, rec);
        if (!query)
            return ERROR_OUTOFMEMORY;

        r = MSI_DatabaseOpenViewW(data->db, query, &dbview);
        if (r != ERROR_SUCCESS)
            goto done;

        r = MSI_ViewExecute(dbview, ((void*)0));
        if (r != ERROR_SUCCESS)
            goto done;

        r = MSI_ViewFetch(dbview, &row);
        if (r == ERROR_SUCCESS && !MSI_RecordsAreEqual(rec, row))
        {
            table->numconflicts++;
            goto done;
        }
        else if (r != ERROR_NO_MORE_ITEMS)
            goto done;

        r = ERROR_SUCCESS;
    }

    mergerow = msi_alloc(sizeof(MERGEROW));
    if (!mergerow)
    {
        r = ERROR_OUTOFMEMORY;
        goto done;
    }

    mergerow->data = MSI_CloneRecord(rec);
    if (!mergerow->data)
    {
        r = ERROR_OUTOFMEMORY;
        msi_free(mergerow);
        goto done;
    }

    list_add_tail(&table->rows, &mergerow->entry);

done:
    msi_free(query);
    msiobj_release(&row->hdr);
    msiobj_release(&dbview->hdr);
    return r;
}
