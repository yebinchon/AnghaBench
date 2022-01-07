
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,void*) ;
 void* HeapReAlloc (int ,int ,void*,unsigned int) ;

__attribute__((used)) static void *grow_array( void *array, unsigned int *count, size_t elem )
{
    void *new_array;
    unsigned int new_count = *count + *count / 2;
    if (new_count < 32) new_count = 32;

    if (array)
 new_array = HeapReAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, array, new_count * elem );
    else
 new_array = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, new_count * elem );

    if (new_array)
        *count = new_count;
    else
        HeapFree( GetProcessHeap(), 0, array );
    return new_array;
}
