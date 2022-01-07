
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 void* HeapReAlloc (int ,int ,void*,size_t) ;

__attribute__((used)) static void *ungif_realloc( void *ptr, size_t sz )
{
    return HeapReAlloc( GetProcessHeap(), 0, ptr, sz );
}
