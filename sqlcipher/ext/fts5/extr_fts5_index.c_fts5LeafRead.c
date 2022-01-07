
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_9__ {scalar_t__ szLeaf; scalar_t__ nn; } ;
struct TYPE_8__ {int rc; } ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5Data ;


 int FTS5_CORRUPT ;
 TYPE_2__* fts5DataRead (TYPE_1__*,int ) ;
 int fts5DataRelease (TYPE_2__*) ;

__attribute__((used)) static Fts5Data *fts5LeafRead(Fts5Index *p, i64 iRowid){
  Fts5Data *pRet = fts5DataRead(p, iRowid);
  if( pRet ){
    if( pRet->szLeaf>pRet->nn ){
      p->rc = FTS5_CORRUPT;
      fts5DataRelease(pRet);
      pRet = 0;
    }
  }
  return pRet;
}
