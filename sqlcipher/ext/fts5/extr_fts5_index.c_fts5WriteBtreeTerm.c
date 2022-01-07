
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {scalar_t__ rc; } ;
struct TYPE_8__ {int pgno; } ;
struct TYPE_9__ {TYPE_1__ writer; int iBtPage; int btterm; } ;
typedef TYPE_2__ Fts5SegWriter ;
typedef TYPE_3__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 int fts5BufferSet (scalar_t__*,int *,int,int const*) ;
 int fts5WriteFlushBtree (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void fts5WriteBtreeTerm(
  Fts5Index *p,
  Fts5SegWriter *pWriter,
  int nTerm, const u8 *pTerm
){
  fts5WriteFlushBtree(p, pWriter);
  if( p->rc==SQLITE_OK ){
    fts5BufferSet(&p->rc, &pWriter->btterm, nTerm, pTerm);
    pWriter->iBtPage = pWriter->writer.pgno;
  }
}
