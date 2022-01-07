
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int BOOL ;


 int BeginPath (int ) ;
 int CreateCompatibleDC (int *) ;
 int DeleteDC (int ) ;
 int ERROR_INVALID_HANDLE ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int ok (int,char*,int) ;

void Test_BeginPath()
{
    HDC hdc;
    BOOL ret;

    SetLastError(0);
    ret = BeginPath(0);
    ok(ret == 0, "BeginPath(0) succeeded, ret == %d\n", ret);
    ok(GetLastError() == ERROR_INVALID_HANDLE, "GetLastError() == %ld\n", GetLastError());

    hdc = CreateCompatibleDC(((void*)0));

    SetLastError(0);
    ret = BeginPath(hdc);
    ok(ret == 1, "BeginPath(hdc) failed, ret == %d\n", ret);
    ok(GetLastError() == 0, "GetLastError() == %ld\n", GetLastError());

    DeleteDC(hdc);

}
