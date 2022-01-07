
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IFolder ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;
typedef int BOOL ;


 scalar_t__ CTL_E_FILEALREADYEXISTS ;
 int CreateDirectoryW (int *,int *) ;
 int GetLastError () ;
 scalar_t__ IFileSystem3_CreateFolder (int ,int ,int **) ;
 int MAX_PATH ;
 int RemoveDirectoryW (int *) ;
 int SysAllocString (int *) ;
 int SysFreeString (int ) ;
 int fs3 ;
 int get_temp_path (int *,int *) ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void test_createfolder(void)
{
    WCHAR buffW[MAX_PATH];
    HRESULT hr;
    BSTR path;
    IFolder *folder;
    BOOL ret;

    get_temp_path(((void*)0), buffW);
    ret = CreateDirectoryW(buffW, ((void*)0));
    ok(ret, "got %d, %d\n", ret, GetLastError());


    path = SysAllocString(buffW);
    folder = (void*)0xdeabeef;
    hr = IFileSystem3_CreateFolder(fs3, path, &folder);
    ok(hr == CTL_E_FILEALREADYEXISTS, "got 0x%08x\n", hr);
    ok(folder == ((void*)0), "got %p\n", folder);
    SysFreeString(path);
    RemoveDirectoryW(buffW);
}
