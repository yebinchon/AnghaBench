
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int CHECK_CALLED (int ) ;
 int SCRIPTITEM_GLOBALMEMBERS ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int global_success_d ;
 int global_success_i ;
 int load_res (char const*) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ parse_script (int ,int ) ;

__attribute__((used)) static void run_from_res(const char *name)
{
    BSTR str;
    HRESULT hres;

    str = load_res(name);

    SET_EXPECT(global_success_d);
    SET_EXPECT(global_success_i);
    hres = parse_script(SCRIPTITEM_GLOBALMEMBERS, str);
    CHECK_CALLED(global_success_d);
    CHECK_CALLED(global_success_i);

    ok(hres == S_OK, "parse_script failed: %08x\n", hres);
    SysFreeString(str);
}
