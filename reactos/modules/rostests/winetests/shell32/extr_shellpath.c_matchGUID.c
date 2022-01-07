
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* abID; } ;
struct TYPE_8__ {TYPE_1__ mkid; } ;
typedef TYPE_2__* LPITEMIDLIST ;
typedef scalar_t__ HRESULT ;
typedef int const GUID ;


 int IMalloc_Free (int ,TYPE_2__*) ;
 scalar_t__ IsEqualIID (int const*,int const*) ;
 scalar_t__ PT_GUID ;
 scalar_t__ PT_SHELLEXT ;
 scalar_t__ S_OK ;
 int getFolderName (int) ;
 int ok (int,char*,int ,int ,int ,...) ;
 TYPE_2__* pILFindLastID (TYPE_2__*) ;
 int pMalloc ;
 scalar_t__ pSHGetFolderLocation (int *,int,int *,int ,TYPE_2__**) ;
 int wine_dbgstr_guid (int const*) ;

__attribute__((used)) static void matchGUID(int folder, const GUID *guid, const GUID *guid_alt)
{
    LPITEMIDLIST pidl;
    HRESULT hr;

    if (!pSHGetFolderLocation) return;
    if (!guid) return;

    pidl = ((void*)0);
    hr = pSHGetFolderLocation(((void*)0), folder, ((void*)0), 0, &pidl);
    if (hr == S_OK)
    {
        LPITEMIDLIST pidlLast = pILFindLastID(pidl);

        if (pidlLast && (pidlLast->mkid.abID[0] == PT_SHELLEXT ||
         pidlLast->mkid.abID[0] == PT_GUID))
        {
            GUID *shellGuid = (GUID *)(pidlLast->mkid.abID + 2);

            if (!guid_alt)
             ok(IsEqualIID(shellGuid, guid),
              "%s: got GUID %s, expected %s\n", getFolderName(folder),
              wine_dbgstr_guid(shellGuid), wine_dbgstr_guid(guid));
            else
             ok(IsEqualIID(shellGuid, guid) ||
              IsEqualIID(shellGuid, guid_alt),
              "%s: got GUID %s, expected %s or %s\n", getFolderName(folder),
              wine_dbgstr_guid(shellGuid), wine_dbgstr_guid(guid), wine_dbgstr_guid(guid_alt));
        }
        IMalloc_Free(pMalloc, pidl);
    }
}
