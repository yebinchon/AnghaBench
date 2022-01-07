
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;

void InvalidateLB(void)
{
 ENTER_FUNC();
    __asm__ __volatile__
 (
  "wbinvd\n\t 		mov %%cr3,%%ecx\n\t         mov %%ecx,%%cr3"


        :::"ecx"
    );
 LEAVE_FUNC();
}
