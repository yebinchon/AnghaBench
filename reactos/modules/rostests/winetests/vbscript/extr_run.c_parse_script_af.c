
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BSTR ;


 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ parse_script (int ,int ,int *) ;

__attribute__((used)) static void parse_script_af(DWORD flags, const char *src)
{
    BSTR tmp;
    HRESULT hres;

    tmp = a2bstr(src);
    hres = parse_script(flags, tmp, ((void*)0));
    SysFreeString(tmp);
    ok(hres == S_OK, "parse_script failed: %08x\n", hres);
}
