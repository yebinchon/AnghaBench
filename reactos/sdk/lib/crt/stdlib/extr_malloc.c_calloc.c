
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,size_t) ;
 size_t ROUND_SIZE (size_t) ;

void* calloc(size_t _nmemb, size_t _size)
{
   size_t nSize = _nmemb * _size;
   size_t cSize = ROUND_SIZE(nSize);

   if ( (_nmemb > ((size_t)-1 / _size)) || (cSize<nSize))
      return ((void*)0);

   return HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, cSize );
}
