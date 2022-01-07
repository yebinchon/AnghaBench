
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pIndex; scalar_t__ bTotalsValid; } ;
typedef TYPE_1__ Fts5Storage ;


 int sqlite3Fts5IndexRollback (int ) ;

int sqlite3Fts5StorageRollback(Fts5Storage *p){
  p->bTotalsValid = 0;
  return sqlite3Fts5IndexRollback(p->pIndex);
}
