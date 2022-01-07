
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 int TRUE ;
 int pGetPrinterW (int *,int ,int *,int ,int *) ;

__attribute__((used)) static BOOL check_win9x(void)
{
    if (pGetPrinterW)
    {
        SetLastError(0xdeadbeef);
        pGetPrinterW(((void*)0), 0, ((void*)0), 0, ((void*)0));
        return (GetLastError() == ERROR_CALL_NOT_IMPLEMENTED);
    }
    else
    {
        return TRUE;
    }
}
