
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 size_t HeapSize (int ,int ,void*) ;

size_t _msize(void* _ptr)
{
   return HeapSize(GetProcessHeap(), 0, _ptr);
}
