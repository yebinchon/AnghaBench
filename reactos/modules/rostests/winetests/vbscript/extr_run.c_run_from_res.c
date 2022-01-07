
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int * HRSRC ;
typedef char const* HRESULT ;
typedef int DWORD ;
typedef int * BSTR ;


 int CHECK_CALLED (int ) ;
 int CP_ACP ;
 int FALSE ;
 int * FindResourceA (int *,char const*,int ) ;
 char* LoadResource (int *,int *) ;
 int MultiByteToWideChar (int ,int ,char const*,int ,int *,int ) ;
 int SCRIPTITEM_GLOBALMEMBERS ;
 int SET_EXPECT (int ) ;
 char const* S_OK ;
 int SizeofResource (int *,int *) ;
 int * SysAllocStringLen (int *,int ) ;
 int SysFreeString (int *) ;
 int global_success_d ;
 int global_success_i ;
 int ok (int,char*,char const*) ;
 char* parse_script (int ,int *,int *) ;
 int strict_dispid_check ;
 char const* test_name ;

__attribute__((used)) static void run_from_res(const char *name)
{
    const char *data;
    DWORD size, len;
    BSTR str;
    HRSRC src;
    HRESULT hres;

    strict_dispid_check = FALSE;
    test_name = name;

    src = FindResourceA(((void*)0), name, (LPCSTR)40);
    ok(src != ((void*)0), "Could not find resource %s\n", name);

    size = SizeofResource(((void*)0), src);
    data = LoadResource(((void*)0), src);

    len = MultiByteToWideChar(CP_ACP, 0, data, size, ((void*)0), 0);
    str = SysAllocStringLen(((void*)0), len);
    MultiByteToWideChar(CP_ACP, 0, data, size, str, len);

    SET_EXPECT(global_success_d);
    SET_EXPECT(global_success_i);
    hres = parse_script(SCRIPTITEM_GLOBALMEMBERS, str, ((void*)0));
    CHECK_CALLED(global_success_d);
    CHECK_CALLED(global_success_i);

    ok(hres == S_OK, "parse_script failed: %08x\n", hres);
    SysFreeString(str);
}
