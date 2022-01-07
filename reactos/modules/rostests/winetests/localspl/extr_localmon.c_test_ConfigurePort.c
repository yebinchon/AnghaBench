
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int GetLastError () ;
 int SetLastError (int) ;
 int pConfigurePort (int *,int ,int *) ;
 int * portname_com1W ;
 int * portname_fileW ;
 int * portname_lpt1W ;
 int trace (char*,int ,int ) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_ConfigurePort(void)
{
    DWORD res;


    if (!pConfigurePort) return;

    if (0)
    {

        pConfigurePort(((void*)0), 0, ((void*)0));
    }
    if (winetest_interactive > 0) {

        SetLastError(0xdeadbeef);
        res = pConfigurePort(((void*)0), 0, portname_com1W);
        trace("returned %d with %u\n", res, GetLastError());

        SetLastError(0xdeadbeef);
        res = pConfigurePort(((void*)0), 0, portname_lpt1W);
        trace("returned %d with %u\n", res, GetLastError());

        SetLastError(0xdeadbeef);
        res = pConfigurePort(((void*)0), 0, portname_fileW);
        trace("returned %d with %u\n", res, GetLastError());
    }
}
