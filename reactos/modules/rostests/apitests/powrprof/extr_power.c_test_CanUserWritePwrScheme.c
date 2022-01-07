
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ DWORD ;


 scalar_t__ CanUserWritePwrScheme () ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ GetLastError () ;
 int ok (int,char*,...) ;

void test_CanUserWritePwrScheme(void)
{
   DWORD error, retval;

   retval = CanUserWritePwrScheme();

   error = GetLastError();

   if (retval)
      ok(retval, "function failed?");
   else
      ok(error == ERROR_ACCESS_DENIED, "function last error wrong expected ERROR_ACCESS_DENIED but got %d\n", (UINT)error);

}
