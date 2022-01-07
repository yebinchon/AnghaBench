
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t n; int * p; } ;
struct TYPE_7__ {int * aEof; int * aPoslist; } ;
typedef TYPE_1__ Fts5DoclistIter ;
typedef TYPE_2__ Fts5Buffer ;


 int fts5DoclistIterNext (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void fts5DoclistIterInit(
  Fts5Buffer *pBuf,
  Fts5DoclistIter *pIter
){
  memset(pIter, 0, sizeof(*pIter));
  pIter->aPoslist = pBuf->p;
  pIter->aEof = &pBuf->p[pBuf->n];
  fts5DoclistIterNext(pIter);
}
