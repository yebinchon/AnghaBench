
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int *) ;
 int * CreateEventW (int *,int ,int ,int *) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int REG_NOTIFY_CHANGE_NAME ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyA (int ,char*,int *) ;
 int RegDeleteKeyA (int ,char*) ;
 scalar_t__ RegNotifyChangeKeyValue (int ,int ,int ,int *,int ) ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int *,int ) ;
 int hkey_main ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_RegNotifyChangeKeyValue(void)
{
    HKEY key, subkey;
    HANDLE event;
    DWORD dwret;
    LONG ret;

    event = CreateEventW(((void*)0), FALSE, TRUE, ((void*)0));
    ok(event != ((void*)0), "CreateEvent failed, error %u\n", GetLastError());
    ret = RegCreateKeyA(hkey_main, "TestKey", &key);
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    ret = RegNotifyChangeKeyValue(key, TRUE, REG_NOTIFY_CHANGE_NAME, event, TRUE);
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);
    dwret = WaitForSingleObject(event, 0);
    ok(dwret == WAIT_TIMEOUT, "expected WAIT_TIMEOUT, got %u\n", dwret);

    ret = RegCreateKeyA(key, "SubKey", &subkey);
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);
    dwret = WaitForSingleObject(event, 0);
    ok(dwret == WAIT_OBJECT_0, "expected WAIT_OBJECT_0, got %u\n", dwret);

    RegDeleteKeyA(key, "");
    RegCloseKey(key);
    CloseHandle(event);
}
