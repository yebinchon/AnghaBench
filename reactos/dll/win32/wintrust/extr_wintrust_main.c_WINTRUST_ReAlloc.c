
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapReAlloc (int ,int ,void*,int ) ;

__attribute__((used)) static void* WINTRUST_ReAlloc(void *ptr, DWORD cb)
{
    return HeapReAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, ptr, cb);
}
