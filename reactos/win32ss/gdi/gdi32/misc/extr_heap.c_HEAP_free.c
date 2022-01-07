
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPVOID ;


 int RtlFreeHeap (int ,int ,int ) ;
 int assert (int ) ;
 int hProcessHeap ;

VOID
HEAP_free ( LPVOID memory )
{

    assert(hProcessHeap);

    RtlFreeHeap ( hProcessHeap, 0, memory );
}
