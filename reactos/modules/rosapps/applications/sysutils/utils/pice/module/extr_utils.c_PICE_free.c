
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (void*) ;
 int ExFreePool (void*) ;

void PICE_free( void* p )
{
 ASSERT( p );
 ExFreePool( p );
}
