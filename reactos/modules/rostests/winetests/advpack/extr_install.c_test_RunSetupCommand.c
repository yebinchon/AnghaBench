
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int systemdir ;
typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ HRESULT ;
typedef int * HANDLE ;


 char* CURR_DIR ;
 int CreateDirectoryA (char*,int *) ;
 int DeleteFileA (char*) ;
 int ERROR_DIRECTORY ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ E_INVALIDARG ;
 int GetSystemDirectoryA (char*,int) ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 int MAX_PATH ;
 int RSC_FLAG_INF ;
 int RSC_FLAG_QUIET ;
 int RemoveDirectoryA (char*) ;
 scalar_t__ S_ASYNCHRONOUS ;
 int TerminateProcess (int *,int ) ;
 int create_inf_file (char*) ;
 int is_spapi_err (scalar_t__) ;
 int lstrcatA (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 int ok (int,char*,...) ;
 scalar_t__ pRunSetupCommand (int *,char*,char*,char*,char*,int **,int,int *) ;

__attribute__((used)) static void test_RunSetupCommand(void)
{
    HRESULT hr;
    HANDLE hexe;
    char path[MAX_PATH];
    char dir[MAX_PATH];
    char systemdir[MAX_PATH];

    GetSystemDirectoryA(systemdir, sizeof(systemdir));


    hr = pRunSetupCommand(((void*)0), ((void*)0), "Install", "Dir", "Title", ((void*)0), 0, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), "winver.exe", "Install", ((void*)0), "Title", ((void*)0), 0, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %d\n", hr);





    hexe = (HANDLE)0xdeadbeef;

    hr = pRunSetupCommand(((void*)0), "idontexist.exe", "Install", systemdir, "Title", &hexe, 0, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND),
       "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\n", hr);
    ok(hexe == ((void*)0), "Expected hexe to be NULL\n");
    ok(!TerminateProcess(hexe, 0), "Expected TerminateProcess to fail\n");





    hexe = (HANDLE)0xdeadbeef;

    hr = pRunSetupCommand(((void*)0), "winver.exe", "Install", "non\\existent\\directory", "Title", &hexe, 0, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_DIRECTORY),
       "Expected HRESULT_FROM_WIN32(ERROR_DIRECTORY), got %d\n", hr);
    ok(hexe == ((void*)0), "Expected hexe to be NULL\n");
    ok(!TerminateProcess(hexe, 0), "Expected TerminateProcess to fail\n");





    hexe = (HANDLE)0xdeadbeef;

    hr = pRunSetupCommand(((void*)0), "winver.exe", "Install", systemdir, "Title", &hexe, RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(is_spapi_err(hr), "Expected a setupapi error, got %d\n", hr);



    ok(hexe == (HANDLE)0xdeadbeef, "Expected hexe to be 0xdeadbeef\n");

    ok(!TerminateProcess(hexe, 0), "Expected TerminateProcess to fail\n");





    hexe = (HANDLE)0xdeadbeef;

    hr = pRunSetupCommand(((void*)0), "winver.exe", "Install", systemdir, "Title", &hexe, 0, ((void*)0));
    ok(hr == S_ASYNCHRONOUS, "Expected S_ASYNCHRONOUS, got %d\n", hr);
    ok(hexe != ((void*)0), "Expected hexe to be non-NULL\n");
    ok(TerminateProcess(hexe, 0), "Expected TerminateProcess to succeed\n");

    CreateDirectoryA("one", ((void*)0));
    create_inf_file("one\\test.inf");


    lstrcpyA(path, CURR_DIR);
    lstrcatA(path, "\\one\\test.inf");
    lstrcpyA(dir, CURR_DIR);
    lstrcatA(dir, "\\one");
    hr = pRunSetupCommand(((void*)0), path, "DefaultInstall", dir, "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), path, "DefaultInstall", ((void*)0), "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), path, "DefaultInstall", "", "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), "one\\test.inf", "DefaultInstall", dir, "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), "one\\test.inf", "DefaultInstall", ((void*)0), "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), "one\\test.inf", "DefaultInstall", "", "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), "test.inf", "DefaultInstall", dir, "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), "test.inf", "DefaultInstall", ((void*)0), "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), "test.inf", "DefaultInstall", "", "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\n", hr);

    DeleteFileA("one\\test.inf");
    RemoveDirectoryA("one");

    create_inf_file("test.inf");


    hr = pRunSetupCommand(((void*)0), "test.inf", "DefaultInstall", CURR_DIR, "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), "test.inf", "DefaultInstall", ((void*)0), "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got %d\n", hr);


    hr = pRunSetupCommand(((void*)0), "test.inf", "DefaultInstall", CURR_DIR, "Title", ((void*)0), RSC_FLAG_INF | RSC_FLAG_QUIET, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\n", hr);
}
