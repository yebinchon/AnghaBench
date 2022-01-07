
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;


 int MEM_RELEASE ;
 int NtCurrentProcess () ;
 int NtFreeVirtualMemory (int ,void**,int *,int ) ;

void PsaiFree(void *ptr)
{
 SIZE_T nSize = 0;

 NtFreeVirtualMemory(NtCurrentProcess(), &ptr, &nSize, MEM_RELEASE);
}
