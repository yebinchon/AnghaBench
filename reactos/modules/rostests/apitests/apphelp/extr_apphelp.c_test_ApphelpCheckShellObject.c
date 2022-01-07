
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGLONG ;
typedef int ULONG ;
typedef int BOOL ;


 int FALSE ;
 int GUID_NULL ;
 int GetLastError () ;
 int SetLastError (int) ;
 int TRUE ;
 int ** objects ;
 int ok (int,char*,int ,int ,int ,...) ;
 int pApphelpCheckShellObject (int *,int ,int*) ;
 int trace (char*,int ,int ,int ,int ) ;
 int win_skip (char*) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_ApphelpCheckShellObject(void)
{
    ULONGLONG flags;
    BOOL res;
    int i;

    if (!pApphelpCheckShellObject)
    {
        win_skip("ApphelpCheckShellObject not available\n");
        return;
    }

    for (i = 0; objects[i]; i++)
    {
        flags = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pApphelpCheckShellObject(objects[i], FALSE, &flags);
        ok(res && (flags == 0), "%s 0: got %d and 0x%x%08x with 0x%x (expected TRUE and 0)\n",
            wine_dbgstr_guid(objects[i]), res, (ULONG)(flags >> 32), (ULONG)flags, GetLastError());

        flags = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pApphelpCheckShellObject(objects[i], TRUE, &flags);
        ok(res && (flags == 0), "%s 1: got %d and 0x%x%08x with 0x%x (expected TRUE and 0)\n",
            wine_dbgstr_guid(objects[i]), res, (ULONG)(flags >> 32), (ULONG)flags, GetLastError());

    }


    SetLastError(0xdeadbeef);
    res = pApphelpCheckShellObject(&GUID_NULL, FALSE, ((void*)0));
    ok(res, "%s 0: got %d with 0x%x (expected != FALSE)\n", wine_dbgstr_guid(&GUID_NULL), res, GetLastError());


    if (0)
    {
        flags = 0xdeadbeef;
        SetLastError(0xdeadbeef);
        res = pApphelpCheckShellObject(((void*)0), FALSE, &flags);
        trace("NULL as CLSID*: got %d and 0x%x%08x with 0x%x\n", res, (ULONG)(flags >> 32), (ULONG)flags, GetLastError());
    }
}
