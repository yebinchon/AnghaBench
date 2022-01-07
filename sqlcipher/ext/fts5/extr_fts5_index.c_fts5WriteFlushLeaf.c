
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
typedef int i64 ;
struct TYPE_14__ {scalar_t__ n; int const* p; } ;
struct TYPE_13__ {int rc; } ;
struct TYPE_12__ {int pgno; scalar_t__ iPrevPgidx; TYPE_9__ buf; TYPE_9__ pgidx; } ;
struct TYPE_11__ {int bFirstTermInPage; int bFirstRowidInPage; int nLeafWritten; int iSegid; TYPE_2__ writer; } ;
typedef TYPE_1__ Fts5SegWriter ;
typedef TYPE_2__ Fts5PageWriter ;
typedef TYPE_3__ Fts5Index ;


 int FTS5_SEGMENT_ROWID (int ,int ) ;
 int assert (int) ;
 int fts5BufferAppendBlob (int *,TYPE_9__*,int,int const*) ;
 int fts5BufferZero (TYPE_9__*) ;
 int fts5DataWrite (TYPE_3__*,int ,int const*,int) ;
 scalar_t__ fts5GetU16 (int const*) ;
 int fts5PutU16 (int const*,int ) ;
 int fts5WriteBtreeNoTerm (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static void fts5WriteFlushLeaf(Fts5Index *p, Fts5SegWriter *pWriter){
  static const u8 zero[] = { 0x00, 0x00, 0x00, 0x00 };
  Fts5PageWriter *pPage = &pWriter->writer;
  i64 iRowid;

  assert( (pPage->pgidx.n==0)==(pWriter->bFirstTermInPage) );


  assert( 0==fts5GetU16(&pPage->buf.p[2]) );
  fts5PutU16(&pPage->buf.p[2], (u16)pPage->buf.n);

  if( pWriter->bFirstTermInPage ){

    assert( pPage->pgidx.n==0 );
    fts5WriteBtreeNoTerm(p, pWriter);
  }else{

    fts5BufferAppendBlob(&p->rc, &pPage->buf, pPage->pgidx.n, pPage->pgidx.p);
  }


  iRowid = FTS5_SEGMENT_ROWID(pWriter->iSegid, pPage->pgno);
  fts5DataWrite(p, iRowid, pPage->buf.p, pPage->buf.n);


  fts5BufferZero(&pPage->buf);
  fts5BufferZero(&pPage->pgidx);
  fts5BufferAppendBlob(&p->rc, &pPage->buf, 4, zero);
  pPage->iPrevPgidx = 0;
  pPage->pgno++;


  pWriter->nLeafWritten++;


  pWriter->bFirstTermInPage = 1;
  pWriter->bFirstRowidInPage = 1;
}
