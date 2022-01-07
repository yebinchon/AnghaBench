
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int BSTR ;


 int SCRIPTITEM_GLOBALMEMBERS ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int ok (int,char*,int ,int ) ;
 int parse_script (int ,int ) ;

__attribute__((used)) static void parse_script_ae(const char *src, HRESULT exhres)
{
    BSTR tmp;
    HRESULT hres;

    tmp = a2bstr(src);
    hres = parse_script(SCRIPTITEM_GLOBALMEMBERS, tmp);
    SysFreeString(tmp);
    ok(hres == exhres, "parse_script failed: %08x, expected %08x\n", hres, exhres);
}
