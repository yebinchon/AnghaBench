
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapCompact (int ,int ) ;

int _heapmin(void)
{
 if (!HeapCompact(GetProcessHeap(), 0))
  return -1;
 return 0;
}
