
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,size_t) ;

__attribute__((used)) static void *ungif_alloc( size_t sz )
{
    return HeapAlloc( GetProcessHeap(), 0, sz );
}
