
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRGN ;


 int CreateRectRgn (int ,int ,int,int) ;
 int DeleteObject (int ) ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 int ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetObjectW (int ,int ,int *) ;
 int SetLastError (int ) ;
 int ok (int,char*) ;

void
Test_Region(void)
{
    HRGN hRgn;
    hRgn = CreateRectRgn(0,0,5,5);
    SetLastError(ERROR_SUCCESS);
    ok(GetObjectW(hRgn, 0, ((void*)0)) == 0, "\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "\n");
    DeleteObject(hRgn);
}
