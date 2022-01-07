
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nPendingData; scalar_t__ pHash; } ;
typedef TYPE_1__ Fts5Index ;


 int assert (int) ;
 int sqlite3Fts5HashClear (scalar_t__) ;

__attribute__((used)) static void fts5IndexDiscardData(Fts5Index *p){
  assert( p->pHash || p->nPendingData==0 );
  if( p->pHash ){
    sqlite3Fts5HashClear(p->pHash);
    p->nPendingData = 0;
  }
}
