
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef int MSIDATABASE ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MSI_DatabaseGetPrimaryKeys (int *,int ,TYPE_1__**) ;
 scalar_t__ MSI_RecordGetFieldCount (TYPE_1__*) ;
 int MSI_RecordGetString (TYPE_1__*,scalar_t__) ;
 int * msi_alloc (int) ;
 int msiobj_release (int *) ;
 int strdupW (int ) ;

__attribute__((used)) static UINT msi_get_table_labels(MSIDATABASE *db, LPCWSTR table, LPWSTR **labels, DWORD *numlabels)
{
    UINT r, i, count;
    MSIRECORD *prec = ((void*)0);

    r = MSI_DatabaseGetPrimaryKeys(db, table, &prec);
    if (r != ERROR_SUCCESS)
        return r;

    count = MSI_RecordGetFieldCount(prec);
    *numlabels = count + 1;
    *labels = msi_alloc((*numlabels)*sizeof(LPWSTR));
    if (!*labels)
    {
        r = ERROR_OUTOFMEMORY;
        goto end;
    }

    (*labels)[0] = strdupW(table);
    for (i=1; i<=count; i++ )
    {
        (*labels)[i] = strdupW(MSI_RecordGetString(prec, i));
    }

end:
    msiobj_release( &prec->hdr );
    return r;
}
