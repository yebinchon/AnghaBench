
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ numconflicts; int name; int rows; int numtypes; int types; int numcolumns; int columns; int numlabels; int labels; } ;
struct TYPE_9__ {int hdr; } ;
typedef TYPE_1__ MSIQUERY ;
typedef int MSIDATABASE ;
typedef TYPE_2__ MERGETABLE ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MSI_OpenQuery (int *,TYPE_1__**,char const*,int ) ;
 int free_merge_table (TYPE_2__*) ;
 int list_init (int *) ;
 TYPE_2__* msi_alloc_zero (int) ;
 scalar_t__ msi_get_query_columns (TYPE_1__*,int *,int *) ;
 scalar_t__ msi_get_query_types (TYPE_1__*,int *,int *) ;
 scalar_t__ msi_get_table_labels (int *,int ,int *,int *) ;
 int msiobj_release (int *) ;
 int strdupW (int ) ;

__attribute__((used)) static UINT msi_get_merge_table (MSIDATABASE *db, LPCWSTR name, MERGETABLE **ptable)
{
    UINT r;
    MERGETABLE *table;
    MSIQUERY *mergeview = ((void*)0);

    static const WCHAR query[] = {'S','E','L','E','C','T',' ','*',' ',
        'F','R','O','M',' ','`','%','s','`',0};

    table = msi_alloc_zero(sizeof(MERGETABLE));
    if (!table)
    {
       *ptable = ((void*)0);
       return ERROR_OUTOFMEMORY;
    }

    r = msi_get_table_labels(db, name, &table->labels, &table->numlabels);
    if (r != ERROR_SUCCESS)
        goto err;

    r = MSI_OpenQuery(db, &mergeview, query, name);
    if (r != ERROR_SUCCESS)
        goto err;

    r = msi_get_query_columns(mergeview, &table->columns, &table->numcolumns);
    if (r != ERROR_SUCCESS)
        goto err;

    r = msi_get_query_types(mergeview, &table->types, &table->numtypes);
    if (r != ERROR_SUCCESS)
        goto err;

    list_init(&table->rows);

    table->name = strdupW(name);
    table->numconflicts = 0;

    msiobj_release(&mergeview->hdr);
    *ptable = table;
    return ERROR_SUCCESS;

err:
    msiobj_release(&mergeview->hdr);
    free_merge_table(table);
    *ptable = ((void*)0);
    return r;
}
