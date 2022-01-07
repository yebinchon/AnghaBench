
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pScan; } ;
struct TYPE_5__ {struct TYPE_5__* pScanNext; } ;
typedef TYPE_2__ Fts5Hash ;


 int assert (int) ;
 int sqlite3Fts5HashScanEof (TYPE_2__*) ;

void sqlite3Fts5HashScanNext(Fts5Hash *p){
  assert( !sqlite3Fts5HashScanEof(p) );
  p->pScan = p->pScan->pScanNext;
}
