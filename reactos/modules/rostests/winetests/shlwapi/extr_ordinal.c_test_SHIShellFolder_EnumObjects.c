
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IShellFolder ;
typedef int IEnumIDList ;
typedef int HRESULT ;


 int IEnumIDList_Release (int *) ;
 int IShellFolder_Release (int *) ;
 int SHGetDesktopFolder (int **) ;
 int S_OK ;
 int ShellFolder ;
 int ok (int,char*,...) ;
 int pSHIShellFolder_EnumObjects (int *,int *,int ,int **) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SHIShellFolder_EnumObjects(void)
{
    IEnumIDList *enm;
    HRESULT hres;
    IShellFolder *folder;

    if(!pSHIShellFolder_EnumObjects){
        win_skip("SHIShellFolder_EnumObjects not available\n");
        return;
    }

    if(0){

        pSHIShellFolder_EnumObjects(((void*)0), ((void*)0), 0, ((void*)0));
    }


    enm = (IEnumIDList*)0xdeadbeef;
    hres = pSHIShellFolder_EnumObjects(&ShellFolder, ((void*)0), 0, &enm);
    ok(hres == S_OK, "SHIShellFolder_EnumObjects failed: 0x%08x\n", hres);
    ok(enm == (IEnumIDList*)0xcafebabe, "Didn't get expected enumerator location, instead: %p\n", enm);


    hres = SHGetDesktopFolder(&folder);
    ok(hres == S_OK, "SHGetDesktopFolder failed: 0x%08x\n", hres);

    enm = ((void*)0);
    hres = pSHIShellFolder_EnumObjects(folder, ((void*)0), 0, &enm);
    ok(hres == S_OK, "SHIShellFolder_EnumObjects failed: 0x%08x\n", hres);
    ok(enm != ((void*)0), "Didn't get an enumerator\n");
    if(enm)
        IEnumIDList_Release(enm);

    IShellFolder_Release(folder);
}
