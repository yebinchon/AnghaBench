
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int COMPARE_CACHE (int ) ;
 int ClipTestProc ;
 int ClipThread ;
 int CloseClipboard () ;
 int CloseHandle (int ) ;
 int CreateThread (int *,int ,int ,int *,int ,int *) ;
 int * CreateWindowW (char*,char*,int ,int,int,int,int,int *,int *,int ,int *) ;
 int CritSect ;
 int EMPTY_CACHE () ;
 int EmptyClipboard () ;
 int EmptyClipboard_chain ;
 int FlushMessages () ;
 scalar_t__ GetMessage (int *,int ,int ,int ) ;
 int InitializeCriticalSection (int *) ;
 int OpenClipboard (int *) ;
 int RecordAndDispatch (int *) ;
 int RegisterSimpleClass (int ,char*) ;
 int WS_OVERLAPPEDWINDOW ;
 int empty_chain ;
 int * hWnd1 ;
 int * hWnd2 ;
 int ok (int ,char*) ;

void TestMessages()
{
    HANDLE hThread;
    DWORD dwThread;
    BOOL ret;
    MSG msg;


    InitializeCriticalSection(&CritSect);

    RegisterSimpleClass(ClipTestProc, L"clipstest");

    hWnd2 = ((void*)0);
    hWnd1 = CreateWindowW(L"clipstest", L"clipstest", WS_OVERLAPPEDWINDOW,
                        20, 20, 300, 300, ((void*)0), ((void*)0), 0, ((void*)0));
    ok (hWnd1 != ((void*)0), "CreateWindowW failed\n");

    EMPTY_CACHE();


    ret = OpenClipboard(hWnd1);
    ok (ret, "OpenClipboard failed\n");

    ret = EmptyClipboard();
    ok (ret, "EmptyClipboard failed\n");

    ret = CloseClipboard();
    ok (ret, "CloseClipboard failed\n");


    FlushMessages();
    COMPARE_CACHE(empty_chain);


    hThread = CreateThread(((void*)0), 0, ClipThread, ((void*)0), 0, &dwThread);

    while (GetMessage(&msg, 0, 0 ,0))
        RecordAndDispatch(&msg);

    COMPARE_CACHE(EmptyClipboard_chain);

    CloseHandle(hThread);
}
