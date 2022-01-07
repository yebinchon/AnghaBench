
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getdrivename_test {int * drive; scalar_t__* path; } ;
typedef int HRESULT ;
typedef int * BSTR ;


 int E_POINTER ;
 int IFileSystem3_GetDriveName (int ,int *,int **) ;
 int S_OK ;
 int * SysAllocString (scalar_t__*) ;
 int SysFreeString (int *) ;
 int fs3 ;
 struct getdrivename_test* getdrivenametestdata ;
 int lstrcmpW (int *,int *) ;
 int ok (int,char*,int ,...) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_GetDriveName(void)
{
    const struct getdrivename_test *ptr = getdrivenametestdata;
    HRESULT hr;
    BSTR name;

    hr = IFileSystem3_GetDriveName(fs3, ((void*)0), ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    name = (void*)0xdeadbeef;
    hr = IFileSystem3_GetDriveName(fs3, ((void*)0), &name);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(name == ((void*)0), "got %p\n", name);

    while (*ptr->path) {
        BSTR path = SysAllocString(ptr->path);
        name = (void*)0xdeadbeef;
        hr = IFileSystem3_GetDriveName(fs3, path, &name);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        if (name)
            ok(!lstrcmpW(ptr->drive, name), "got %s, expected %s\n", wine_dbgstr_w(name), wine_dbgstr_w(ptr->drive));
        else
            ok(!*ptr->drive, "got %s, expected %s\n", wine_dbgstr_w(name), wine_dbgstr_w(ptr->drive));
        SysFreeString(path);
        SysFreeString(name);
        ptr++;
    }
}
