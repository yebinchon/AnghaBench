
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,void*) ;

void free(void* _ptr)
{
   HeapFree(GetProcessHeap(),0,_ptr);
}
