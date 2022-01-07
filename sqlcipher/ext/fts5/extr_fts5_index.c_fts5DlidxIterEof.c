
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* aLvl; } ;
struct TYPE_7__ {scalar_t__ rc; } ;
struct TYPE_6__ {scalar_t__ bEof; } ;
typedef TYPE_2__ Fts5Index ;
typedef TYPE_3__ Fts5DlidxIter ;


 scalar_t__ SQLITE_OK ;

__attribute__((used)) static int fts5DlidxIterEof(Fts5Index *p, Fts5DlidxIter *pIter){
  return p->rc!=SQLITE_OK || pIter->aLvl[0].bEof;
}
