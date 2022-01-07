
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buildpath_test {char* path; char* name; char* result; } ;
typedef int HRESULT ;
typedef scalar_t__* BSTR ;


 int E_POINTER ;
 int IFileSystem3_BuildPath (int ,scalar_t__*,scalar_t__*,scalar_t__**) ;
 int S_OK ;
 int SysFreeString (scalar_t__*) ;
 scalar_t__* bstr_from_str (char*) ;
 struct buildpath_test* buildpath_data ;
 int fs3 ;
 int lstrcmpW (scalar_t__*,scalar_t__*) ;
 int ok (int,char*,...) ;
 int wine_dbgstr_w (scalar_t__*) ;

__attribute__((used)) static void test_BuildPath(void)
{
    struct buildpath_test *ptr = buildpath_data;
    BSTR ret, path;
    HRESULT hr;
    int i = 0;

    hr = IFileSystem3_BuildPath(fs3, ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    ret = (BSTR)0xdeadbeef;
    hr = IFileSystem3_BuildPath(fs3, ((void*)0), ((void*)0), &ret);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(*ret == 0, "got %p\n", ret);
    SysFreeString(ret);

    ret = (BSTR)0xdeadbeef;
    path = bstr_from_str("path");
    hr = IFileSystem3_BuildPath(fs3, path, ((void*)0), &ret);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(!lstrcmpW(ret, path), "got %s\n", wine_dbgstr_w(ret));
    SysFreeString(ret);
    SysFreeString(path);

    ret = (BSTR)0xdeadbeef;
    path = bstr_from_str("path");
    hr = IFileSystem3_BuildPath(fs3, ((void*)0), path, &ret);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(!lstrcmpW(ret, path), "got %s\n", wine_dbgstr_w(ret));
    SysFreeString(ret);
    SysFreeString(path);

    while (ptr->path)
    {
        BSTR name, result;

        ret = ((void*)0);
        path = bstr_from_str(ptr->path);
        name = bstr_from_str(ptr->name);
        result = bstr_from_str(ptr->result);
        hr = IFileSystem3_BuildPath(fs3, path, name, &ret);
        ok(hr == S_OK, "%d: got 0x%08x\n", i, hr);
        if (hr == S_OK)
        {
            ok(!lstrcmpW(ret, result), "%d: got wrong path %s, expected %s\n", i, wine_dbgstr_w(ret),
                wine_dbgstr_w(result));
            SysFreeString(ret);
        }
        SysFreeString(path);
        SysFreeString(name);
        SysFreeString(result);

        i++;
        ptr++;
    }
}
