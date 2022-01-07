
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 void* HeapReAlloc (int ,int ,void*,size_t) ;
 size_t ROUND_SIZE (size_t) ;
 int free (void*) ;
 void* malloc (size_t) ;

void* realloc(void* _ptr, size_t _size)
{
   size_t nSize;

   if (_ptr == ((void*)0))
      return malloc(_size);

   if (_size == 0)
   {
       free(_ptr);
       return ((void*)0);
   }

   nSize = ROUND_SIZE(_size);


   if (nSize<_size)
       return ((void*)0);

   return HeapReAlloc(GetProcessHeap(), 0, _ptr, nSize);
}
