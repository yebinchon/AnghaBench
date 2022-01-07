
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int ITfThreadMgr_Deactivate (int ) ;
 int SINK_OPTIONAL ;
 int SINK_UNEXPECTED ;
 int SUCCEEDED (int ) ;
 int TRUE ;
 int g_dm ;
 int g_tm ;
 int ok (int ,char*) ;
 int sink_check_ok (int *,char*) ;
 int * test_CurrentFocus ;
 int test_OnSetFocus ;
 int test_PrevFocus ;
 int test_ShouldDeactivate ;

__attribute__((used)) static void test_endSession(void)
{
    HRESULT hr;
    test_ShouldDeactivate = TRUE;
    test_CurrentFocus = ((void*)0);
    test_PrevFocus = g_dm;
    test_OnSetFocus = SINK_OPTIONAL;
    hr = ITfThreadMgr_Deactivate(g_tm);
    ok(SUCCEEDED(hr),"Failed to Deactivate\n");
    sink_check_ok(&test_OnSetFocus,"OnSetFocus");
    test_OnSetFocus = SINK_UNEXPECTED;
}
