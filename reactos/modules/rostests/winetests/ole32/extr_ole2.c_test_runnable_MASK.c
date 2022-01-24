#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct expected_method {char* member_0; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  IOleObject ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OleObject ; 
 scalar_t__ TRUE ; 
 struct expected_method const* expected_method_list ; 
 scalar_t__ g_isRunning ; 
 scalar_t__ g_showRunnable ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    static const struct expected_method methods_query_runnable[] =
    {
        { "OleObject_QueryInterface", 0 },
        { "OleObjectRunnable_AddRef", 0 },
        { "OleObjectRunnable_IsRunning", 0 },
        { "OleObjectRunnable_Release", 0 },
        { NULL, 0 }
    };

    static const struct expected_method methods_no_runnable[] =
    {
        { "OleObject_QueryInterface", 0 },
        { NULL, 0 }
    };

    BOOL ret;
    IOleObject *object = &OleObject;

    /* null argument */
    ret = FUNC1(NULL);
    FUNC2(ret == FALSE, "got %d\n", ret);

    expected_method_list = methods_query_runnable;
    ret = FUNC1(object);
    FUNC2(ret == TRUE, "Object should be running\n");
    FUNC0();

    g_isRunning = FALSE;
    expected_method_list = methods_query_runnable;
    ret = FUNC1(object);
    FUNC2(ret == FALSE, "Object should not be running\n");
    FUNC0();

    g_showRunnable = FALSE;  /* QueryInterface(IID_IRunnableObject, ...) will fail */
    expected_method_list = methods_no_runnable;
    ret = FUNC1(object);
    FUNC2(ret == TRUE, "Object without IRunnableObject should be running\n");
    FUNC0();

    g_isRunning = TRUE;
    g_showRunnable = TRUE;
}