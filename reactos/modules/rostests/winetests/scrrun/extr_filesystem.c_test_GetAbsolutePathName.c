
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WIN32_FIND_DATAW ;
typedef char WCHAR ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HANDLE ;
typedef char* BSTR ;


 int CreateDirectoryW (char const*,int *) ;
 scalar_t__ E_POINTER ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (char const*,int *) ;
 int GetFullPathNameW (char const*,int,char*,int *) ;
 scalar_t__ IFileSystem3_GetAbsolutePathName (int ,char*,char**) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int RemoveDirectoryW (char const*) ;
 scalar_t__ S_OK ;
 char* SysAllocString (char const*) ;
 int SysFreeString (char*) ;
 scalar_t__ broken (int) ;
 int fs3 ;
 int lstrcmpiW (char*,char*) ;
 int ok (int,char*,scalar_t__,...) ;
 int skip (char*) ;
 int wine_dbgstr_w (char const*) ;

__attribute__((used)) static void test_GetAbsolutePathName(void)
{
    static const WCHAR dir1[] = {'t','e','s','t','_','d','i','r','1',0};
    static const WCHAR dir2[] = {'t','e','s','t','_','d','i','r','2',0};
    static const WCHAR dir_match1[] = {'t','e','s','t','_','d','i','r','*',0};
    static const WCHAR dir_match2[] = {'t','e','s','t','_','d','i','*',0};
    static const WCHAR cur_dir[] = {'.',0};

    WIN32_FIND_DATAW fdata;
    HANDLE find;
    WCHAR buf[MAX_PATH], buf2[MAX_PATH];
    BSTR path, result;
    HRESULT hr;

    hr = IFileSystem3_GetAbsolutePathName(fs3, ((void*)0), ((void*)0));
    ok(hr == E_POINTER, "GetAbsolutePathName returned %x, expected E_POINTER\n", hr);

    hr = IFileSystem3_GetAbsolutePathName(fs3, ((void*)0), &result);
    ok(hr == S_OK, "GetAbsolutePathName returned %x, expected S_OK\n", hr);
    GetFullPathNameW(cur_dir, MAX_PATH, buf, ((void*)0));
    ok(!lstrcmpiW(buf, result), "result = %s, expected %s\n", wine_dbgstr_w(result), wine_dbgstr_w(buf));
    SysFreeString(result);

    find = FindFirstFileW(dir_match2, &fdata);
    if(find != INVALID_HANDLE_VALUE) {
        skip("GetAbsolutePathName tests\n");
        FindClose(find);
        return;
    }

    path = SysAllocString(dir_match1);
    hr = IFileSystem3_GetAbsolutePathName(fs3, path, &result);
    ok(hr == S_OK, "GetAbsolutePathName returned %x, expected S_OK\n", hr);
    GetFullPathNameW(dir_match1, MAX_PATH, buf2, ((void*)0));
    ok(!lstrcmpiW(buf2, result), "result = %s, expected %s\n", wine_dbgstr_w(result), wine_dbgstr_w(buf2));
    SysFreeString(result);

    ok(CreateDirectoryW(dir1, ((void*)0)), "CreateDirectory(%s) failed\n", wine_dbgstr_w(dir1));
    hr = IFileSystem3_GetAbsolutePathName(fs3, path, &result);
    ok(hr == S_OK, "GetAbsolutePathName returned %x, expected S_OK\n", hr);
    GetFullPathNameW(dir1, MAX_PATH, buf, ((void*)0));
    ok(!lstrcmpiW(buf, result) || broken(!lstrcmpiW(buf2, result)), "result = %s, expected %s\n",
                wine_dbgstr_w(result), wine_dbgstr_w(buf));
    SysFreeString(result);

    ok(CreateDirectoryW(dir2, ((void*)0)), "CreateDirectory(%s) failed\n", wine_dbgstr_w(dir2));
    hr = IFileSystem3_GetAbsolutePathName(fs3, path, &result);
    ok(hr == S_OK, "GetAbsolutePathName returned %x, expected S_OK\n", hr);
    if(!lstrcmpiW(buf, result) || !lstrcmpiW(buf2, result)) {
        ok(!lstrcmpiW(buf, result) || broken(!lstrcmpiW(buf2, result)), "result = %s, expected %s\n",
                wine_dbgstr_w(result), wine_dbgstr_w(buf));
    }else {
        GetFullPathNameW(dir2, MAX_PATH, buf, ((void*)0));
        ok(!lstrcmpiW(buf, result), "result = %s, expected %s\n",
                wine_dbgstr_w(result), wine_dbgstr_w(buf));
    }
    SysFreeString(result);

    SysFreeString(path);
    path = SysAllocString(dir_match2);
    hr = IFileSystem3_GetAbsolutePathName(fs3, path, &result);
    ok(hr == S_OK, "GetAbsolutePathName returned %x, expected S_OK\n", hr);
    GetFullPathNameW(dir_match2, MAX_PATH, buf, ((void*)0));
    ok(!lstrcmpiW(buf, result), "result = %s, expected %s\n", wine_dbgstr_w(result), wine_dbgstr_w(buf));
    SysFreeString(result);
    SysFreeString(path);

    RemoveDirectoryW(dir1);
    RemoveDirectoryW(dir2);
}
