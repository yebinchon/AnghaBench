
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {int mxWalSize; } ;
typedef TYPE_1__ Wal ;



void sqlite3WalLimit(Wal *pWal, i64 iLimit){
  if( pWal ) pWal->mxWalSize = iLimit;
}
