
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef int MSIQUERY ;
typedef int LPWSTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int MSICOLINFO_TYPES ;
 scalar_t__ MSI_RecordGetFieldCount (TYPE_1__*) ;
 int MSI_RecordGetString (TYPE_1__*,scalar_t__) ;
 scalar_t__ MSI_ViewGetColumnInfo (int *,int ,TYPE_1__**) ;
 int * msi_alloc (scalar_t__) ;
 int msiobj_release (int *) ;
 int strdupW (int ) ;

__attribute__((used)) static UINT msi_get_query_types(MSIQUERY *query, LPWSTR **types, DWORD *numtypes)
{
    UINT r, i, count;
    MSIRECORD *prec = ((void*)0);

    r = MSI_ViewGetColumnInfo(query, MSICOLINFO_TYPES, &prec);
    if (r != ERROR_SUCCESS)
        return r;

    count = MSI_RecordGetFieldCount(prec);
    *types = msi_alloc(count*sizeof(LPWSTR));
    if (!*types)
    {
        r = ERROR_OUTOFMEMORY;
        goto end;
    }

    *numtypes = count;
    for (i=1; i<=count; i++ )
    {
        (*types)[i-1] = strdupW(MSI_RecordGetString(prec, i));
    }

end:
    msiobj_release( &prec->hdr );
    return r;
}
