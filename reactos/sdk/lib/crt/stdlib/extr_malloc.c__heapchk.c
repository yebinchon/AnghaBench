
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapValidate (int ,int ,int *) ;

int _heapchk(void)
{
 if (!HeapValidate(GetProcessHeap(), 0, ((void*)0)))
  return -1;
 return 0;
}
