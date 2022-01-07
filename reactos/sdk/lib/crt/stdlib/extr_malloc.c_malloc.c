
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,size_t) ;
 size_t ROUND_SIZE (size_t) ;

void* malloc(size_t _size)
{
   size_t nSize = ROUND_SIZE(_size);

   if (nSize<_size)
       return ((void*)0);

   return HeapAlloc(GetProcessHeap(), 0, nSize);
}
