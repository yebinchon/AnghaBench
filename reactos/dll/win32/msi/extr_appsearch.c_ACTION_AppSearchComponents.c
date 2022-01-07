
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_12__ {int db; } ;
struct TYPE_11__ {int hdr; } ;
struct TYPE_10__ {int Name; } ;
typedef TYPE_1__ MSISIGNATURE ;
typedef TYPE_2__ MSIRECORD ;
typedef TYPE_3__ MSIPACKAGE ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesW (char*) ;
 int INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 TYPE_2__* MSI_QueryGetRecord (int ,char const*,int ) ;
 scalar_t__ MSI_RecordGetInteger (TYPE_2__*,int) ;
 int MSI_RecordGetString (TYPE_2__*,int) ;
 int MsiLocateComponentW (int ,char*,int*) ;
 int PathAddBackslashW (char*) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int * app_search_file (char*,TYPE_1__*) ;
 int debugstr_w (int ) ;
 int lstrcatW (char*,int ) ;
 scalar_t__ msidbLocatorTypeDirectory ;
 scalar_t__ msidbLocatorTypeFileName ;
 int msiobj_release (int *) ;
 int * strdupW (char*) ;
 int * strrchrW (char*,char) ;

__attribute__((used)) static UINT ACTION_AppSearchComponents(MSIPACKAGE *package, LPWSTR *appValue, MSISIGNATURE *sig)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ',
        'F','R','O','M',' ',
        '`','C','o','m','p','L','o','c','a','t','o','r','`',' ',
        'W','H','E','R','E',' ','`','S','i','g','n','a','t','u','r','e','_','`',' ','=',' ',
        '\'','%','s','\'',0};
    static const WCHAR sigquery[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','S','i','g','n','a','t','u','r','e','`',' ',
        'W','H','E','R','E',' ','`','S','i','g','n','a','t','u','r','e','`',' ','=',' ',
        '\'','%','s','\'',0};

    MSIRECORD *row, *rec;
    LPCWSTR signature, guid;
    BOOL sigpresent = TRUE;
    BOOL isdir;
    UINT type;
    WCHAR path[MAX_PATH];
    DWORD size = MAX_PATH;
    LPWSTR ptr;
    DWORD attr;

    TRACE("%s\n", debugstr_w(sig->Name));

    *appValue = ((void*)0);

    row = MSI_QueryGetRecord(package->db, query, sig->Name);
    if (!row)
    {
        TRACE("failed to query CompLocator for %s\n", debugstr_w(sig->Name));
        return ERROR_SUCCESS;
    }

    signature = MSI_RecordGetString(row, 1);
    guid = MSI_RecordGetString(row, 2);
    type = MSI_RecordGetInteger(row, 3);

    rec = MSI_QueryGetRecord(package->db, sigquery, signature);
    if (!rec)
        sigpresent = FALSE;

    *path = '\0';
    MsiLocateComponentW(guid, path, &size);
    if (!*path)
        goto done;

    attr = GetFileAttributesW(path);
    if (attr == INVALID_FILE_ATTRIBUTES)
        goto done;

    isdir = (attr & FILE_ATTRIBUTE_DIRECTORY);

    if (type != msidbLocatorTypeDirectory && sigpresent && !isdir)
    {
        *appValue = app_search_file(path, sig);
    }
    else if (!sigpresent && (type != msidbLocatorTypeDirectory || isdir))
    {
        if (type == msidbLocatorTypeFileName)
        {
            ptr = strrchrW(path, '\\');
            *(ptr + 1) = '\0';
        }
        else
            PathAddBackslashW(path);

        *appValue = strdupW(path);
    }
    else if (sigpresent)
    {
        PathAddBackslashW(path);
        lstrcatW(path, MSI_RecordGetString(rec, 2));

        attr = GetFileAttributesW(path);
        if (attr != INVALID_FILE_ATTRIBUTES &&
            !(attr & FILE_ATTRIBUTE_DIRECTORY))
            *appValue = strdupW(path);
    }

done:
    if (rec) msiobj_release(&rec->hdr);
    msiobj_release(&row->hdr);
    return ERROR_SUCCESS;
}
