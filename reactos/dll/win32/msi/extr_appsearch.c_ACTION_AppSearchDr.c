
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_19__ {int db; } ;
struct TYPE_18__ {int hdr; } ;
struct TYPE_17__ {int Name; } ;
typedef TYPE_1__ MSISIGNATURE ;
typedef TYPE_2__ MSIRECORD ;
typedef TYPE_3__ MSIPACKAGE ;
typedef char* LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int DWORD ;


 int ACTION_AppSearchSigName (TYPE_3__*,scalar_t__,TYPE_1__*,char**) ;
 int ACTION_ExpandAnyPath (TYPE_3__*,char*,char*,int) ;
 int ACTION_FreeSignature (TYPE_1__*) ;
 int ACTION_SearchDirectory (TYPE_3__*,TYPE_1__*,char*,int,char**) ;
 int ERROR_SUCCESS ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesW (char*) ;
 int INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 TYPE_2__* MSI_QueryGetRecord (int ,char const*,int ) ;
 int MSI_RecordGetInteger (TYPE_2__*,int) ;
 scalar_t__ MSI_RecordGetString (TYPE_2__*,int) ;
 int MSI_RecordGetStringW (TYPE_2__*,int,char*,int*) ;
 scalar_t__ MSI_RecordIsNull (TYPE_2__*,int) ;
 int PathAddBackslashW (char*) ;
 int PathRemoveFileSpecW (char*) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int ) ;
 int msi_free (char*) ;
 int msiobj_release (int *) ;
 int strcatW (char*,char*) ;
 int strcpyW (char*,char*) ;

__attribute__((used)) static UINT ACTION_AppSearchDr(MSIPACKAGE *package, LPWSTR *appValue, MSISIGNATURE *sig)
{
    static const WCHAR query[] = {
        's','e','l','e','c','t',' ','*',' ',
        'f','r','o','m',' ',
        'D','r','L','o','c','a','t','o','r',' ',
        'w','h','e','r','e',' ',
        'S','i','g','n','a','t','u','r','e','_',' ','=',' ', '\'','%','s','\'',0};
    LPWSTR parent = ((void*)0);
    LPCWSTR parentName;
    WCHAR path[MAX_PATH];
    WCHAR expanded[MAX_PATH];
    MSIRECORD *row;
    int depth;
    DWORD sz, attr;
    UINT rc;

    TRACE("%s\n", debugstr_w(sig->Name));

    *appValue = ((void*)0);

    row = MSI_QueryGetRecord( package->db, query, sig->Name );
    if (!row)
    {
        TRACE("failed to query DrLocator for %s\n", debugstr_w(sig->Name));
        return ERROR_SUCCESS;
    }


    parentName = MSI_RecordGetString(row, 2);
    if (parentName)
    {
        MSISIGNATURE parentSig;

        ACTION_AppSearchSigName(package, parentName, &parentSig, &parent);
        ACTION_FreeSignature(&parentSig);
        if (!parent)
        {
            msiobj_release(&row->hdr);
            return ERROR_SUCCESS;
        }
    }

    sz = MAX_PATH;
    MSI_RecordGetStringW(row, 3, path, &sz);

    if (MSI_RecordIsNull(row,4))
        depth = 0;
    else
        depth = MSI_RecordGetInteger(row,4);

    if (sz)
        ACTION_ExpandAnyPath(package, path, expanded, MAX_PATH);
    else
        strcpyW(expanded, path);

    if (parent)
    {
        attr = GetFileAttributesW(parent);
        if (attr != INVALID_FILE_ATTRIBUTES &&
            !(attr & FILE_ATTRIBUTE_DIRECTORY))
        {
            PathRemoveFileSpecW(parent);
            PathAddBackslashW(parent);
        }

        strcpyW(path, parent);
        strcatW(path, expanded);
    }
    else if (sz)
        strcpyW(path, expanded);

    PathAddBackslashW(path);

    rc = ACTION_SearchDirectory(package, sig, path, depth, appValue);

    msi_free(parent);
    msiobj_release(&row->hdr);

    TRACE("returning %d\n", rc);
    return rc;
}
