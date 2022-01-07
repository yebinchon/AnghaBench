
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HEAP_REALLOC_IN_PLACE_ONLY ;
 void* HeapReAlloc (int ,int ,void*,size_t) ;
 size_t ROUND_SIZE (size_t) ;

void* _expand(void* _ptr, size_t _size)
{
   size_t nSize;

   nSize = ROUND_SIZE(_size);

   if (nSize<_size)
       return ((void*)0);

   return HeapReAlloc(GetProcessHeap(), HEAP_REALLOC_IN_PLACE_ONLY, _ptr, nSize);
}
