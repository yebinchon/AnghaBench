
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int * LPITEMIDLIST ;
typedef char CHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ CreateDirectoryA (char const*,int *) ;
 int GetLastError () ;
 int GetVersion () ;
 int ILFree (int *) ;
 scalar_t__ RemoveDirectoryA (char const*) ;
 int * SHSimpleIDListFromPath (char const*) ;
 scalar_t__ TRUE ;
 int ok (int,char*,int ) ;
 int verify_pidl (int *,char const*) ;

__attribute__((used)) static void test_SHSimpleIDListFromPath(void)
{
    const WCHAR adirW[] = {'C',':','\\','s','i','d','l','f','p','d','i','r',0};
    const CHAR adirA[] = "C:\\sidlfpdir";
    BOOL br, is_unicode = !(GetVersion() & 0x80000000);

    LPITEMIDLIST pidl = ((void*)0);

    br = CreateDirectoryA(adirA, ((void*)0));
    ok(br == TRUE, "CreateDirectory failed: %d\n", GetLastError());

    if(is_unicode)
        pidl = SHSimpleIDListFromPath(adirW);
    else
        pidl = SHSimpleIDListFromPath((const WCHAR *)adirA);
    verify_pidl(pidl, adirW);
    ILFree(pidl);

    br = RemoveDirectoryA(adirA);
    ok(br == TRUE, "RemoveDirectory failed: %d\n", GetLastError());

    if(is_unicode)
        pidl = SHSimpleIDListFromPath(adirW);
    else
        pidl = SHSimpleIDListFromPath((const WCHAR *)adirA);
    verify_pidl(pidl, adirW);
    ILFree(pidl);
}
