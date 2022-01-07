
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int FALSE ;
 int SCRIPTITEM_GLOBALMEMBERS ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int get_script_from_file (char const*) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ parse_script (int ,int ,int *) ;
 int strict_dispid_check ;

__attribute__((used)) static void run_from_file(const char *filename)
{
    BSTR script_str;
    HRESULT hres;

    script_str = get_script_from_file(filename);
    if(!script_str)
        return;

    strict_dispid_check = FALSE;
    hres = parse_script(SCRIPTITEM_GLOBALMEMBERS, script_str, ((void*)0));
    SysFreeString(script_str);
    ok(hres == S_OK, "parse_script failed: %08x\n", hres);
}
