
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IActiveScriptParse ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int CHECK_CALLED (int ) ;
 scalar_t__ IActiveScriptParse_ParseScriptText (int *,int ,int *,int *,int *,int ,int ,int ,int *,int *) ;
 int OnEnterScript ;
 int OnLeaveScript ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void parse_script(IActiveScriptParse *parse, const char *src)
{
    BSTR str;
    HRESULT hres;

    SET_EXPECT(OnEnterScript);
    SET_EXPECT(OnLeaveScript);

    str = a2bstr(src);
    hres = IActiveScriptParse_ParseScriptText(parse, str, ((void*)0), ((void*)0), ((void*)0), 0, 0, 0, ((void*)0), ((void*)0));
    SysFreeString(str);
    ok(hres == S_OK, "ParseScriptText failed: %08x\n", hres);

    CHECK_CALLED(OnEnterScript);
    CHECK_CALLED(OnLeaveScript);
}
