
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PVOID ;
typedef int * PBYTE ;


 int MEM_COMMIT ;
 int MEM_RESERVE ;
 int PAGE_READWRITE ;
 void* VirtualAlloc (int *,int,int ,int ) ;
 int printf (char*) ;

int main()
{
   PBYTE Base;
   PVOID Ret;

   Base = VirtualAlloc(((void*)0),
         1048576,
         MEM_RESERVE,
         PAGE_READWRITE);
   if (Base == ((void*)0))
     {
 printf("VirtualAlloc failed 1\n");
     }

   Ret = VirtualAlloc(Base + 4096,
        4096,
        MEM_COMMIT,
        PAGE_READWRITE);
   if (Ret == ((void*)0))
     {
 printf("VirtualAlloc failed 2\n");
     }

   Ret = VirtualAlloc(Base + 12288,
        4096,
        MEM_COMMIT,
        PAGE_READWRITE);
   if (Ret == ((void*)0))
     {
 printf("VirtualAlloc failed 3\n");
     }

   Ret = VirtualAlloc(Base + 20480,
        4096,
        MEM_COMMIT,
        PAGE_READWRITE);
   if (Ret == ((void*)0))
     {
 printf("VirtualAlloc failed 4\n");
     }

   Ret = VirtualAlloc(Base + 4096,
        28672,
        MEM_RESERVE,
        PAGE_READWRITE);
   if (Ret == ((void*)0))
     {
 printf("VirtualAlloc failed 5\n");
     }
   return 0;
}
