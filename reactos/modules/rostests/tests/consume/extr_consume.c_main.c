
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PUCHAR ;


 int MEM_COMMIT ;
 int PAGE_READONLY ;
 int SIZE ;
 int * VirtualAlloc (int *,int,int ,int ) ;
 int printf (char*,...) ;
 int * x ;

int main()
{
   int i;
   PUCHAR BaseAddress;

   BaseAddress = VirtualAlloc(((void*)0),
         SIZE,
         MEM_COMMIT,
         PAGE_READONLY);
   if (BaseAddress == ((void*)0))
     {
 printf("Failed to allocate virtual memory");
 return(1);
     }
   printf("BaseAddress %p\n", BaseAddress);
   for (i = 0; i < (SIZE / 4096); i++)
     {
 printf("%.8x  ", i*4096);
 x[i] = BaseAddress[i*4096];
     }

   return(0);
}
