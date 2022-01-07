
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;

VOID
Free(PVOID Block)
{
    HeapFree(GetProcessHeap(), 0, Block);
}
