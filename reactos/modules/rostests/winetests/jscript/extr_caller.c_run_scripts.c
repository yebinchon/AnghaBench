
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IActiveScriptParse ;
typedef scalar_t__ HRESULT ;


 int CHECK_CALLED (int ) ;
 scalar_t__ IActiveScriptParse_QueryInterface (int *,int *,void**) ;
 int IActiveScriptParse_Release (int *) ;
 int IDispatch_Release (int ) ;
 int IID_IVariantChangeType ;
 int IVariantChangeType_Release (int ) ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int * create_script () ;
 int ok (int,char*,scalar_t__) ;
 int parse_script_a (int *,char*) ;
 int script_change_type ;
 int stored_obj ;
 int testArgConv ;
 int test_change_types (int ,int ) ;

__attribute__((used)) static void run_scripts(void)
{
    IActiveScriptParse *parser;
    HRESULT hres;

    parser = create_script();

    hres = IActiveScriptParse_QueryInterface(parser, &IID_IVariantChangeType, (void**)&script_change_type);
    ok(hres == S_OK, "Could not get IVariantChangeType iface: %08x\n", hres);

    SET_EXPECT(testArgConv);
    parse_script_a(parser,
                   "var obj = {"
                   "    toString: function() { return 'strval'; },"
                   "    valueOf: function()  { return 10; }"
                   "};"
                   "testArgConv(obj);");
    CHECK_CALLED(testArgConv);

    test_change_types(script_change_type, stored_obj);
    IDispatch_Release(stored_obj);
    IVariantChangeType_Release(script_change_type);

    IActiveScriptParse_Release(parser);
}
