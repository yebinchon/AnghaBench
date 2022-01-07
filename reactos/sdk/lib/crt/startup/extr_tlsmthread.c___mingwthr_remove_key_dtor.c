
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ___w64_mingwthr_remove_key_dtor (int ) ;
 int __mingw_usemthread_dll ;

int
__mingwthr_remove_key_dtor (DWORD key)
{

  if (!__mingw_usemthread_dll)

     return ___w64_mingwthr_remove_key_dtor (key);

  return 0;

}
