
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ n; } ;
struct TYPE_9__ {TYPE_4__ buf; int bPrevValid; } ;
struct TYPE_8__ {int rc; } ;
struct TYPE_7__ {int nEmpty; TYPE_3__* aDlidx; scalar_t__ bFirstRowidInPage; } ;
typedef TYPE_1__ Fts5SegWriter ;
typedef TYPE_2__ Fts5Index ;
typedef TYPE_3__ Fts5DlidxWriter ;


 int assert (int ) ;
 int sqlite3Fts5BufferAppendVarint (int *,TYPE_4__*,int ) ;

__attribute__((used)) static void fts5WriteBtreeNoTerm(
  Fts5Index *p,
  Fts5SegWriter *pWriter
){


  if( pWriter->bFirstRowidInPage && pWriter->aDlidx[0].buf.n>0 ){
    Fts5DlidxWriter *pDlidx = &pWriter->aDlidx[0];
    assert( pDlidx->bPrevValid );
    sqlite3Fts5BufferAppendVarint(&p->rc, &pDlidx->buf, 0);
  }


  pWriter->nEmpty++;
}
