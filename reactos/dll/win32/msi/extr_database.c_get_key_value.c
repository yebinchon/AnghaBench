
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef int MSIQUERY ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;


 int ERR (char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int MSICOLINFO_NAMES ;
 scalar_t__ MSI_RecordGetString (TYPE_1__*,scalar_t__) ;
 scalar_t__ MSI_RecordGetStringW (TYPE_1__*,scalar_t__,int *,scalar_t__*) ;
 scalar_t__ MSI_ViewGetColumnInfo (int *,int ,TYPE_1__**) ;
 int lstrcpyW (int *,char const*) ;
 int * msi_alloc (scalar_t__) ;
 int * msi_dup_record_field (TYPE_1__*,scalar_t__) ;
 int msi_free (int *) ;
 int msiobj_release (int *) ;
 int strcmpW (int ,int *) ;

__attribute__((used)) static LPWSTR get_key_value(MSIQUERY *view, LPCWSTR key, MSIRECORD *rec)
{
    MSIRECORD *colnames;
    LPWSTR str, val;
    UINT r, i = 0, sz = 0;
    int cmp;

    r = MSI_ViewGetColumnInfo(view, MSICOLINFO_NAMES, &colnames);
    if (r != ERROR_SUCCESS)
        return ((void*)0);

    do
    {
        str = msi_dup_record_field(colnames, ++i);
        cmp = strcmpW( key, str );
        msi_free(str);
    } while (cmp);

    msiobj_release(&colnames->hdr);

    r = MSI_RecordGetStringW(rec, i, ((void*)0), &sz);
    if (r != ERROR_SUCCESS)
        return ((void*)0);
    sz++;

    if (MSI_RecordGetString(rec, i))
    {

        const WCHAR szQuote[] = {'\'', 0};
        sz += 2;
        val = msi_alloc(sz*sizeof(WCHAR));
        if (!val)
            return ((void*)0);

        lstrcpyW(val, szQuote);
        r = MSI_RecordGetStringW(rec, i, val+1, &sz);
        lstrcpyW(val+1+sz, szQuote);
    }
    else
    {

        val = msi_alloc(sz*sizeof(WCHAR));
        if (!val)
            return ((void*)0);

        r = MSI_RecordGetStringW(rec, i, val, &sz);
    }

    if (r != ERROR_SUCCESS)
    {
        ERR("failed to get string!\n");
        msi_free(val);
        return ((void*)0);
    }

    return val;
}
