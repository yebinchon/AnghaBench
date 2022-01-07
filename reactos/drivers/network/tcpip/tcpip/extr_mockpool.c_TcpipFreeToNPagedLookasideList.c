
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;
typedef int PNPAGED_LOOKASIDE_LIST ;


 int PoolFreeBuffer (int ) ;

VOID TcpipFreeToNPagedLookasideList( PNPAGED_LOOKASIDE_LIST List,
         PVOID Thing ) {
    PoolFreeBuffer( Thing );
}
