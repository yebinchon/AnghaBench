
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
typedef int MSIDATABASE ;
typedef char const* LPWSTR ;
typedef char const* LPCWSTR ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MSI_DatabaseGetPrimaryKeys (int *,char const*,TYPE_1__**) ;
 scalar_t__ MSI_RecordGetFieldCount (TYPE_1__*) ;
 char* MSI_RecordGetString (TYPE_1__*,scalar_t__) ;
 char* get_key_value (int *,char const*,TYPE_1__*) ;
 int lstrlenW (char const*) ;
 char* msi_alloc (int) ;
 char* msi_alloc_zero (int) ;
 int msi_free (char const*) ;
 char* msi_realloc (char const*,int) ;
 int msiobj_release (int *) ;
 int sprintfW (char const*,char const*,char const*,char const*) ;

__attribute__((used)) static LPWSTR create_diff_row_query(MSIDATABASE *merge, MSIQUERY *view,
                                    LPWSTR table, MSIRECORD *rec)
{
    LPWSTR query = ((void*)0), clause = ((void*)0), val;
    LPCWSTR setptr, key;
    DWORD size, oldsize;
    MSIRECORD *keys;
    UINT r, i, count;

    static const WCHAR keyset[] = {
        '`','%','s','`',' ','=',' ','%','s',' ','A','N','D',' ',0};
    static const WCHAR lastkeyset[] = {
        '`','%','s','`',' ','=',' ','%','s',' ',0};
    static const WCHAR fmt[] = {'S','E','L','E','C','T',' ','*',' ',
        'F','R','O','M',' ','`','%','s','`',' ',
        'W','H','E','R','E',' ','%','s',0};

    r = MSI_DatabaseGetPrimaryKeys(merge, table, &keys);
    if (r != ERROR_SUCCESS)
        return ((void*)0);

    clause = msi_alloc_zero(sizeof(WCHAR));
    if (!clause)
        goto done;

    size = 1;
    count = MSI_RecordGetFieldCount(keys);
    for (i = 1; i <= count; i++)
    {
        key = MSI_RecordGetString(keys, i);
        val = get_key_value(view, key, rec);

        if (i == count)
            setptr = lastkeyset;
        else
            setptr = keyset;

        oldsize = size;
        size += lstrlenW(setptr) + lstrlenW(key) + lstrlenW(val) - 4;
        clause = msi_realloc(clause, size * sizeof (WCHAR));
        if (!clause)
        {
            msi_free(val);
            goto done;
        }

        sprintfW(clause + oldsize - 1, setptr, key, val);
        msi_free(val);
    }

    size = lstrlenW(fmt) + lstrlenW(table) + lstrlenW(clause) + 1;
    query = msi_alloc(size * sizeof(WCHAR));
    if (!query)
        goto done;

    sprintfW(query, fmt, table, clause);

done:
    msi_free(clause);
    msiobj_release(&keys->hdr);
    return query;
}
