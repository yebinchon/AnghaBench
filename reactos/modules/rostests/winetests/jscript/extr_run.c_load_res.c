
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int * HRSRC ;
typedef int DWORD ;
typedef int * BSTR ;


 int CP_ACP ;
 int FALSE ;
 int * FindResourceA (int *,char const*,int ) ;
 char* LoadResource (int *,int *) ;
 int MultiByteToWideChar (int ,int ,char const*,int ,int *,int ) ;
 int SizeofResource (int *,int *) ;
 int * SysAllocStringLen (int *,int ) ;
 int ok (int ,char*,char const*) ;
 int strict_dispid_check ;
 char const* test_name ;

__attribute__((used)) static BSTR load_res(const char *name)
{
    const char *data;
    DWORD size, len;
    BSTR str;
    HRSRC src;

    strict_dispid_check = FALSE;
    test_name = name;

    src = FindResourceA(((void*)0), name, (LPCSTR)40);
    ok(src != ((void*)0), "Could not find resource %s\n", name);

    size = SizeofResource(((void*)0), src);
    data = LoadResource(((void*)0), src);

    len = MultiByteToWideChar(CP_ACP, 0, data, size, ((void*)0), 0);
    str = SysAllocStringLen(((void*)0), len);
    MultiByteToWideChar(CP_ACP, 0, data, size, str, len);

    return str;
}
