
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ pgno; int flags; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ DbPage ;


 int assert (int) ;
 int sqlite3PcacheMove (TYPE_1__*,scalar_t__) ;

void sqlite3PagerRekey(DbPage *pPg, Pgno iNew, u16 flags){
  assert( pPg->pgno!=iNew );
  pPg->flags = flags;
  sqlite3PcacheMove(pPg, iNew);
}
