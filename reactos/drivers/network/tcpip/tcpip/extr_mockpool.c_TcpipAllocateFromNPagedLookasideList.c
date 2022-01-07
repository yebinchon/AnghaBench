
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Size; } ;
typedef int PVOID ;
typedef TYPE_1__* PNPAGED_LOOKASIDE_LIST ;


 int PoolAllocateBuffer (int ) ;

PVOID TcpipAllocateFromNPagedLookasideList( PNPAGED_LOOKASIDE_LIST List ) {
    return PoolAllocateBuffer( List->Size );
}
