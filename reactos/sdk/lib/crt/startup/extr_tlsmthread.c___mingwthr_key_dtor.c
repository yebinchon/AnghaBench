
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ___w64_mingwthr_add_key_dtor (int ,void (*) (void*)) ;
 int __mingw_usemthread_dll ;

int
__mingwthr_key_dtor (DWORD key, void (*dtor)(void *))
{
  if (dtor)
    {

      if (!__mingw_usemthread_dll)

        return ___w64_mingwthr_add_key_dtor (key, dtor);
    }
  return 0;
}
