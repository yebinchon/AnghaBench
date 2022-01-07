
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pScan; } ;
typedef TYPE_1__ Fts5Hash ;



int sqlite3Fts5HashScanEof(Fts5Hash *p){
  return (p->pScan==0);
}
