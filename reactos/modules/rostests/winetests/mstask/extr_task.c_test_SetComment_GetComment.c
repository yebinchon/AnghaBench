
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char const* LPWSTR ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CoTaskMemFree (char const*) ;
 scalar_t__ ITask_GetComment (int ,char const**) ;
 scalar_t__ ITask_SetComment (int ,char const*) ;
 scalar_t__ S_OK ;
 int cleanup_task () ;
 char const* empty ;
 int lstrcmpW (char const*,char const*) ;
 int ok (int,char*,...) ;
 int setup_task () ;
 int skip (char*) ;
 int test_task ;
 scalar_t__ wine_dbgstr_w (char const*) ;

__attribute__((used)) static void test_SetComment_GetComment(void)
{
    BOOL setup;
    HRESULT hres;
    LPWSTR comment;
    const WCHAR comment_a[] = {'C','o','m','m','e','n','t','.', 0};
    const WCHAR comment_b[] = {'L','o','n','g','e','r',' ',
            'c','o','m','m','e','n','t','.', 0};

    setup = setup_task();
    ok(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        skip("Failed to create task.  Skipping tests.\n");
        return;
    }


    hres = ITask_GetComment(test_task, &comment);
    ok(hres == S_OK, "GetComment failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(comment, empty),
                "Got %s, expected empty string\n", wine_dbgstr_w(comment));
        CoTaskMemFree(comment);
    }


    hres = ITask_SetComment(test_task, comment_a);
    ok(hres == S_OK, "Failed setting comment %s: %08x\n",
            wine_dbgstr_w(comment_a), hres);
    hres = ITask_GetComment(test_task, &comment);
    ok(hres == S_OK, "GetComment failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(comment, comment_a), "Got %s, expected %s\n",
                wine_dbgstr_w(comment), wine_dbgstr_w(comment_a));
        CoTaskMemFree(comment);
    }


    hres = ITask_SetComment(test_task, comment_b);
    ok(hres == S_OK, "Failed setting comment %s: %08x\n",
            wine_dbgstr_w(comment_b), hres);
    hres = ITask_GetComment(test_task, &comment);
    ok(hres == S_OK, "GetComment failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(comment, comment_b), "Got %s, expected %s\n",
                wine_dbgstr_w(comment), wine_dbgstr_w(comment_b));
        CoTaskMemFree(comment);
    }


    hres = ITask_SetComment(test_task, empty);
    ok(hres == S_OK, "Failed setting comment %s: %08x\n",
            wine_dbgstr_w(empty), hres);
    hres = ITask_GetComment(test_task, &comment);
    ok(hres == S_OK, "GetComment failed: %08x\n", hres);
    if (hres == S_OK)
    {
        ok(!lstrcmpW(comment, empty),
                "Got %s, expected empty string\n", wine_dbgstr_w(comment));
        CoTaskMemFree(comment);
    }

    cleanup_task();
    return;
}
