
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_16__ {int buf; } ;
struct TYPE_15__ {scalar_t__ rc; } ;
struct TYPE_12__ {int n; } ;
struct TYPE_14__ {int pgno; TYPE_11__ pgidx; TYPE_11__ buf; TYPE_11__ term; } ;
struct TYPE_13__ {int nDlidx; TYPE_4__* aDlidx; TYPE_11__ btterm; TYPE_2__ writer; } ;
typedef TYPE_1__ Fts5SegWriter ;
typedef TYPE_2__ Fts5PageWriter ;
typedef TYPE_3__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5BufferFree (TYPE_11__*) ;
 int fts5WriteFlushBtree (TYPE_3__*,TYPE_1__*) ;
 int fts5WriteFlushLeaf (TYPE_3__*,TYPE_1__*) ;
 int sqlite3Fts5BufferFree (int *) ;
 int sqlite3_free (TYPE_4__*) ;

__attribute__((used)) static void fts5WriteFinish(
  Fts5Index *p,
  Fts5SegWriter *pWriter,
  int *pnLeaf
){
  int i;
  Fts5PageWriter *pLeaf = &pWriter->writer;
  if( p->rc==SQLITE_OK ){
    assert( pLeaf->pgno>=1 );
    if( pLeaf->buf.n>4 ){
      fts5WriteFlushLeaf(p, pWriter);
    }
    *pnLeaf = pLeaf->pgno-1;
    if( pLeaf->pgno>1 ){
      fts5WriteFlushBtree(p, pWriter);
    }
  }
  fts5BufferFree(&pLeaf->term);
  fts5BufferFree(&pLeaf->buf);
  fts5BufferFree(&pLeaf->pgidx);
  fts5BufferFree(&pWriter->btterm);

  for(i=0; i<pWriter->nDlidx; i++){
    sqlite3Fts5BufferFree(&pWriter->aDlidx[i].buf);
  }
  sqlite3_free(pWriter->aDlidx);
}
