
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT_PTR ;
typedef scalar_t__ SIZE_T ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,scalar_t__) ;

__attribute__((used)) static void *alloc_aligned(SIZE_T size, void **buf)
{
    *buf = HeapAlloc(GetProcessHeap(), 0, size + 7);
    return (void *)(((UINT_PTR)*buf + 7) & ~7);
}
