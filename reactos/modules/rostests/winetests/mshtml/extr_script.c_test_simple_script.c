
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLDocument2 ;


 int AddNamedItem ;
 int CHECK_CALLED (int ) ;
 int CHECK_CALLED_BROKEN (int ) ;
 int Close ;
 int CreateInstance ;
 int GetInterfaceSafetyOptions ;
 int GetScriptState ;
 int IActiveScriptSite_Release (scalar_t__) ;
 int IDispatchEx_Release (scalar_t__) ;
 int IHTMLDocument2_Release (int *) ;
 int InitNew ;
 int ParseScriptText_script ;
 int SET_EXPECT (int ) ;
 int SetInterfaceSafetyOptions ;
 int SetProperty_ABBREVIATE_GLOBALNAME_RESOLUTION ;
 int SetProperty_HACK_TRIDENTEVENTSINK ;
 int SetProperty_INVOKEVERSIONING ;
 int SetScriptSite ;
 int SetScriptState_CONNECTED ;
 int SetScriptState_DISCONNECTED ;
 int SetScriptState_STARTED ;
 int * create_document () ;
 int load_doc (int *,int ) ;
 int simple_script_str ;
 scalar_t__ site ;
 int test_exec_script (int *,char*,char*) ;
 scalar_t__ window_dispex ;

__attribute__((used)) static void test_simple_script(void)
{
    IHTMLDocument2 *doc;

    doc = create_document();
    if(!doc)
        return;

    SET_EXPECT(CreateInstance);
    SET_EXPECT(GetInterfaceSafetyOptions);
    SET_EXPECT(SetInterfaceSafetyOptions);
    SET_EXPECT(SetProperty_INVOKEVERSIONING);
    SET_EXPECT(SetProperty_HACK_TRIDENTEVENTSINK);
    SET_EXPECT(InitNew);
    SET_EXPECT(SetScriptSite);
    SET_EXPECT(GetScriptState);
    SET_EXPECT(SetScriptState_STARTED);
    SET_EXPECT(AddNamedItem);
    SET_EXPECT(SetProperty_ABBREVIATE_GLOBALNAME_RESOLUTION);
    SET_EXPECT(ParseScriptText_script);
    SET_EXPECT(SetScriptState_CONNECTED);

    load_doc(doc, simple_script_str);

    CHECK_CALLED(CreateInstance);
    CHECK_CALLED(GetInterfaceSafetyOptions);
    CHECK_CALLED(SetInterfaceSafetyOptions);
    CHECK_CALLED_BROKEN(SetProperty_INVOKEVERSIONING);
    CHECK_CALLED(SetProperty_HACK_TRIDENTEVENTSINK);
    CHECK_CALLED(InitNew);
    CHECK_CALLED(SetScriptSite);
    CHECK_CALLED(GetScriptState);
    CHECK_CALLED(SetScriptState_STARTED);
    CHECK_CALLED(AddNamedItem);
    CHECK_CALLED_BROKEN(SetProperty_ABBREVIATE_GLOBALNAME_RESOLUTION);
    CHECK_CALLED(ParseScriptText_script);
    CHECK_CALLED(SetScriptState_CONNECTED);

    test_exec_script(doc, "execScript call", "TestScript");

    if(site)
        IActiveScriptSite_Release(site);
    if(window_dispex)
        IDispatchEx_Release(window_dispex);

    SET_EXPECT(SetScriptState_DISCONNECTED);
    SET_EXPECT(Close);

    IHTMLDocument2_Release(doc);

    CHECK_CALLED(SetScriptState_DISCONNECTED);
    CHECK_CALLED(Close);
}
