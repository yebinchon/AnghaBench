
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (int *) ;
 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int *,int *,int *,int **,int,int ,int ) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 int FALSE ;
 int * GetCurrentProcess () ;
 int GetCurrentProcessId () ;
 int GetCurrentThreadId () ;
 scalar_t__ GetLastError () ;
 int * OpenProcess (int,int ,int ) ;
 int * OpenThread (int ,int ,int ) ;
 int PROCESS_ALL_ACCESS ;
 int PROCESS_ALL_ACCESS_NT4 ;
 int PROCESS_QUERY_LIMITED_INFORMATION ;
 int PROCESS_TERMINATE ;
 int PROCESS_VM_READ ;
 int SPECIFIC_RIGHTS_ALL ;
 int STANDARD_RIGHTS_ALL ;
 int SetLastError (int) ;
 int TEST_GRANTED_ACCESS (int *,int) ;
 int TEST_GRANTED_ACCESS2 (int *,int ,int) ;
 int THREAD_SET_THREAD_TOKEN ;
 int THREAD_TERMINATE ;
 int TRUE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_process_security_child(void)
{
    HANDLE handle, handle1;
    BOOL ret;
    DWORD err;

    handle = OpenProcess( PROCESS_TERMINATE, FALSE, GetCurrentProcessId() );
    ok(handle != ((void*)0), "OpenProcess(PROCESS_TERMINATE) with err:%d\n", GetLastError());
    TEST_GRANTED_ACCESS( handle, PROCESS_TERMINATE );

    ret = DuplicateHandle( GetCurrentProcess(), handle, GetCurrentProcess(),
                           &handle1, 0, TRUE, DUPLICATE_SAME_ACCESS );
    ok(ret, "duplicating handle err:%d\n", GetLastError());
    TEST_GRANTED_ACCESS( handle1, PROCESS_TERMINATE );

    CloseHandle( handle1 );

    SetLastError( 0xdeadbeef );
    ret = DuplicateHandle( GetCurrentProcess(), handle, GetCurrentProcess(),
                           &handle1, PROCESS_ALL_ACCESS, TRUE, 0 );
    err = GetLastError();
    ok(!ret && err == ERROR_ACCESS_DENIED, "duplicating handle should have failed "
       "with STATUS_ACCESS_DENIED, instead of err:%d\n", err);

    CloseHandle( handle );


    handle = OpenProcess( PROCESS_VM_READ, FALSE, GetCurrentProcessId() );
    ok(handle == ((void*)0), "OpenProcess(PROCESS_VM_READ) should have failed\n");
    handle = OpenProcess( PROCESS_ALL_ACCESS, FALSE, GetCurrentProcessId() );
    ok(handle == ((void*)0), "OpenProcess(PROCESS_ALL_ACCESS) should have failed\n");


    ret = DuplicateHandle( GetCurrentProcess(), GetCurrentProcess(), GetCurrentProcess(),
                           &handle, 0, TRUE, DUPLICATE_SAME_ACCESS );
    ok(ret, "duplicating handle err:%d\n", GetLastError());
    TEST_GRANTED_ACCESS2( handle, PROCESS_ALL_ACCESS_NT4,
                          STANDARD_RIGHTS_ALL | SPECIFIC_RIGHTS_ALL );

    CloseHandle( handle );


    ret = DuplicateHandle( GetCurrentProcess(), GetCurrentProcess(), GetCurrentProcess(),
                           &handle, PROCESS_ALL_ACCESS, TRUE, 0 );
    ok(ret, "duplicating handle err:%d\n", GetLastError());
    TEST_GRANTED_ACCESS2( handle, PROCESS_ALL_ACCESS_NT4,
                          PROCESS_ALL_ACCESS | PROCESS_QUERY_LIMITED_INFORMATION );
    ret = DuplicateHandle( GetCurrentProcess(), handle, GetCurrentProcess(),
                           &handle1, PROCESS_VM_READ, TRUE, 0 );
    ok(ret, "duplicating handle err:%d\n", GetLastError());
    TEST_GRANTED_ACCESS( handle1, PROCESS_VM_READ );
    CloseHandle( handle1 );
    CloseHandle( handle );


    handle = OpenThread( THREAD_TERMINATE, FALSE, GetCurrentThreadId() );
    ok(handle != ((void*)0), "OpenThread(THREAD_TERMINATE) with err:%d\n", GetLastError());
    TEST_GRANTED_ACCESS( handle, PROCESS_TERMINATE );
    CloseHandle( handle );

    handle = OpenThread( THREAD_SET_THREAD_TOKEN, FALSE, GetCurrentThreadId() );
    ok(handle == ((void*)0), "OpenThread(THREAD_SET_THREAD_TOKEN) should have failed\n");
}
