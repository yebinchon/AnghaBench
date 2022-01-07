
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (int *) ;
 int * CreateEventW (int *,int,int,int *) ;
 int * CreateFileA (char*,int,int ,int *,int ,int,int *) ;
 int * CreateSemaphoreW (int *,int,int,int *) ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_FLAG_DELETE_ON_CLOSE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 scalar_t__ ReleaseSemaphore (int *,int,int *) ;
 int ResetEvent (int *) ;
 scalar_t__ SignalObjectAndWait (int *,int *,int ,scalar_t__) ;
 scalar_t__ TRUE ;
 scalar_t__ WAIT_FAILED ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int *,int ) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_signalandwait(void)
{
    DWORD r;
    HANDLE event[2], semaphore[2], file;
    int i;


    r = SignalObjectAndWait(((void*)0), ((void*)0), 0, 0);
    ok( r == WAIT_FAILED, "should fail\n");

    event[0] = CreateEventW(((void*)0), 0, 0, ((void*)0));
    event[1] = CreateEventW(((void*)0), 1, 1, ((void*)0));

    ok( event[0] && event[1], "failed to create event flags\n");

    r = SignalObjectAndWait(event[0], ((void*)0), 0, FALSE);
    ok( r == WAIT_FAILED, "should fail\n");

    r = SignalObjectAndWait(((void*)0), event[0], 0, FALSE);
    ok( r == WAIT_FAILED, "should fail\n");



    r = SignalObjectAndWait(event[0], event[1], 0, FALSE);
    ok( r == WAIT_OBJECT_0, "should succeed\n");



    for (i = 0; i < 10000; i++)
    {
        r = SignalObjectAndWait(event[0], event[0], 0, FALSE);
        ok(r == WAIT_OBJECT_0, "should succeed\n");
    }


    r = WaitForSingleObject(event[0], 0);
    ok( r == WAIT_TIMEOUT, "event was signalled\n");

    r = SignalObjectAndWait(event[0], event[0], 0, FALSE);
    ok( r == WAIT_OBJECT_0, "should succeed\n");


    ok(ResetEvent(event[1]), "failed to clear event[1]\n");
    r = SignalObjectAndWait(event[0], event[1], 0, FALSE);
    ok( r == WAIT_TIMEOUT, "should timeout\n");

    CloseHandle(event[0]);
    CloseHandle(event[1]);


    semaphore[0] = CreateSemaphoreW( ((void*)0), 0, 1, ((void*)0) );
    semaphore[1] = CreateSemaphoreW( ((void*)0), 1, 1, ((void*)0) );
    ok( semaphore[0] && semaphore[1], "failed to create semaphore\n");

    r = SignalObjectAndWait(semaphore[0], semaphore[1], 0, FALSE);
    ok( r == WAIT_OBJECT_0, "should succeed\n");

    r = SignalObjectAndWait(semaphore[0], semaphore[1], 0, FALSE);
    ok( r == WAIT_FAILED, "should fail\n");

    r = ReleaseSemaphore(semaphore[0],1,((void*)0));
    ok( r == FALSE, "should fail\n");

    r = ReleaseSemaphore(semaphore[1],1,((void*)0));
    ok( r == TRUE, "should succeed\n");

    CloseHandle(semaphore[0]);
    CloseHandle(semaphore[1]);


    file = CreateFileA("x", GENERIC_READ|GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
        FILE_ATTRIBUTE_NORMAL | FILE_FLAG_DELETE_ON_CLOSE, ((void*)0));
    r = SignalObjectAndWait(file, file, 0, FALSE);
    ok( r == WAIT_FAILED, "should fail\n");
    ok( ERROR_INVALID_HANDLE == GetLastError(), "should return invalid handle error\n");
    CloseHandle(file);
}
