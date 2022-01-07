
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int DWORD ;


 int RtlAllocateHeap (int ,int ,int ) ;
 int assert (int ) ;
 int hProcessHeap ;

PVOID
HEAP_alloc ( DWORD len )
{

    assert(hProcessHeap);
    return RtlAllocateHeap ( hProcessHeap, 0, len );
}
