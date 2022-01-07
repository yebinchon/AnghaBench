
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pIndex; } ;
typedef TYPE_1__ Fts5Storage ;


 int sqlite3Fts5IndexOptimize (int ) ;

int sqlite3Fts5StorageOptimize(Fts5Storage *p){
  return sqlite3Fts5IndexOptimize(p->pIndex);
}
