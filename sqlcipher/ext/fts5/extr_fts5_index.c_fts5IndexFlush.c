
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nPendingData; int pHash; } ;
typedef TYPE_1__ Fts5Index ;


 int assert (int ) ;
 int fts5FlushOneHash (TYPE_1__*) ;

__attribute__((used)) static void fts5IndexFlush(Fts5Index *p){

  if( p->nPendingData ){
    assert( p->pHash );
    p->nPendingData = 0;
    fts5FlushOneHash(p);
  }
}
