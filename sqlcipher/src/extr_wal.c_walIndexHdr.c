
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WalIndexHdr ;
struct TYPE_3__ {scalar_t__ nWiData; scalar_t__* apWiData; } ;
typedef TYPE_1__ Wal ;


 int assert (int) ;

__attribute__((used)) static volatile WalIndexHdr *walIndexHdr(Wal *pWal){
  assert( pWal->nWiData>0 && pWal->apWiData[0] );
  return (volatile WalIndexHdr*)pWal->apWiData[0];
}
