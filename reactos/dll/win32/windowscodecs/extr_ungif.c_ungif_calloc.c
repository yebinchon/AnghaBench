
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,size_t) ;

__attribute__((used)) static void *ungif_calloc( size_t num, size_t sz )
{
    return HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, num*sz );
}
