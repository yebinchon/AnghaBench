
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 scalar_t__ E_HANDLE ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ IsAppThemed () ;
 scalar_t__ IsThemeActive () ;
 scalar_t__ IsThemePartDefined (int *,int ,int ) ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 int trace (char*,char*) ;

__attribute__((used)) static void test_IsThemed(void)
{
    BOOL bThemeActive;
    BOOL bAppThemed;
    BOOL bTPDefined;

    bThemeActive = IsThemeActive();
    trace("Theming is %s\n", (bThemeActive) ? "active" : "inactive");

    bAppThemed = IsAppThemed();
    trace("Test executable is %s\n", (bAppThemed) ? "themed" : "not themed");

    SetLastError(0xdeadbeef);
    bTPDefined = IsThemePartDefined(((void*)0), 0 , 0);
    ok( bTPDefined == FALSE, "Expected FALSE\n");
    ok( GetLastError() == E_HANDLE,
        "Expected E_HANDLE, got 0x%08x\n",
        GetLastError());
}
