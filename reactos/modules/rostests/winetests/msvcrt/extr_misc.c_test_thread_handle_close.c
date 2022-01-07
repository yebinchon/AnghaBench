
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef int DWORD ;


 int CloseHandle (int *) ;
 int INFINITE ;
 int * INVALID_HANDLE_VALUE ;
 int Sleep (int) ;
 int WAIT_OBJECT_0 ;
 int WaitForSingleObject (int *,int ) ;
 scalar_t__ _beginthread (int ,int ,void*) ;
 scalar_t__ _beginthreadex (int *,int ,int ,int *,int ,int *) ;
 int errno ;
 int ok (int,char*,int) ;
 int test_thread_func ;
 int test_thread_func_ex ;

__attribute__((used)) static void test_thread_handle_close(void)
{
    HANDLE hThread;
    DWORD ret;


    hThread = (HANDLE)_beginthread(test_thread_func, 0, ((void*)0));
    ok(hThread != INVALID_HANDLE_VALUE, "_beginthread failed (%d)\n", errno);
    WaitForSingleObject(hThread, INFINITE);
    ret = CloseHandle(hThread);
    ok(!ret, "ret = %d\n", ret);

    hThread = (HANDLE)_beginthread(test_thread_func, 0, (void*)1);
    ok(hThread != INVALID_HANDLE_VALUE, "_beginthread failed (%d)\n", errno);
    WaitForSingleObject(hThread, INFINITE);
    ret = CloseHandle(hThread);
    ok(!ret, "ret = %d\n", ret);

    hThread = (HANDLE)_beginthread(test_thread_func, 0, (void*)2);
    ok(hThread != INVALID_HANDLE_VALUE, "_beginthread failed (%d)\n", errno);
    Sleep(150);
    ret = WaitForSingleObject(hThread, INFINITE);
    ok(ret == WAIT_OBJECT_0, "ret = %d\n", ret);
    ret = CloseHandle(hThread);
    ok(ret, "ret = %d\n", ret);

    hThread = (HANDLE)_beginthread(test_thread_func, 0, (void*)3);
    ok(hThread != INVALID_HANDLE_VALUE, "_beginthread failed (%d)\n", errno);
    Sleep(150);
    ret = WaitForSingleObject(hThread, INFINITE);
    ok(ret == WAIT_OBJECT_0, "ret = %d\n", ret);
    ret = CloseHandle(hThread);
    ok(ret, "ret = %d\n", ret);


    hThread = (HANDLE)_beginthreadex(((void*)0),0, test_thread_func_ex, ((void*)0), 0, ((void*)0));
    ok(hThread != ((void*)0), "_beginthreadex failed (%d)\n", errno);
    Sleep(150);
    ret = WaitForSingleObject(hThread, INFINITE);
    ok(ret == WAIT_OBJECT_0, "ret = %d\n", ret);
    ret = CloseHandle(hThread);
    ok(ret, "ret = %d\n", ret);
}
