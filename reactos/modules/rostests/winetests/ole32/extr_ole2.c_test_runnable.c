
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expected_method {char* member_0; int member_1; } ;
typedef int IOleObject ;
typedef scalar_t__ BOOL ;


 int CHECK_NO_EXTRA_METHODS () ;
 scalar_t__ FALSE ;
 scalar_t__ OleIsRunning (int *) ;
 int OleObject ;
 scalar_t__ TRUE ;
 struct expected_method const* expected_method_list ;
 scalar_t__ g_isRunning ;
 scalar_t__ g_showRunnable ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_runnable(void)
{
    static const struct expected_method methods_query_runnable[] =
    {
        { "OleObject_QueryInterface", 0 },
        { "OleObjectRunnable_AddRef", 0 },
        { "OleObjectRunnable_IsRunning", 0 },
        { "OleObjectRunnable_Release", 0 },
        { ((void*)0), 0 }
    };

    static const struct expected_method methods_no_runnable[] =
    {
        { "OleObject_QueryInterface", 0 },
        { ((void*)0), 0 }
    };

    BOOL ret;
    IOleObject *object = &OleObject;


    ret = OleIsRunning(((void*)0));
    ok(ret == FALSE, "got %d\n", ret);

    expected_method_list = methods_query_runnable;
    ret = OleIsRunning(object);
    ok(ret == TRUE, "Object should be running\n");
    CHECK_NO_EXTRA_METHODS();

    g_isRunning = FALSE;
    expected_method_list = methods_query_runnable;
    ret = OleIsRunning(object);
    ok(ret == FALSE, "Object should not be running\n");
    CHECK_NO_EXTRA_METHODS();

    g_showRunnable = FALSE;
    expected_method_list = methods_no_runnable;
    ret = OleIsRunning(object);
    ok(ret == TRUE, "Object without IRunnableObject should be running\n");
    CHECK_NO_EXTRA_METHODS();

    g_isRunning = TRUE;
    g_showRunnable = TRUE;
}
