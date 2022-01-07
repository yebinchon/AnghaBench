
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ n; TYPE_2__* p; } ;
struct TYPE_15__ {int pgsz; int zName; int zDb; } ;
struct TYPE_14__ {scalar_t__ rc; scalar_t__ pIdxWriter; TYPE_4__* pConfig; } ;
struct TYPE_12__ {int pgno; TYPE_5__ buf; TYPE_5__ pgidx; } ;
struct TYPE_13__ {int iSegid; int bFirstTermInPage; int iBtPage; TYPE_1__ writer; } ;
typedef TYPE_2__ Fts5SegWriter ;
typedef TYPE_3__ Fts5Index ;
typedef TYPE_4__ Fts5Config ;


 int FTS5_DATA_PADDING ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5IndexPrepareStmt (TYPE_3__*,scalar_t__*,int ) ;
 int fts5WriteDlidxGrow (TYPE_3__*,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3Fts5BufferSize (scalar_t__*,TYPE_5__*,int const) ;
 int sqlite3_bind_int (scalar_t__,int,int) ;
 int sqlite3_mprintf (char*,int ,int ) ;

__attribute__((used)) static void fts5WriteInit(
  Fts5Index *p,
  Fts5SegWriter *pWriter,
  int iSegid
){
  const int nBuffer = p->pConfig->pgsz + FTS5_DATA_PADDING;

  memset(pWriter, 0, sizeof(Fts5SegWriter));
  pWriter->iSegid = iSegid;

  fts5WriteDlidxGrow(p, pWriter, 1);
  pWriter->writer.pgno = 1;
  pWriter->bFirstTermInPage = 1;
  pWriter->iBtPage = 1;

  assert( pWriter->writer.buf.n==0 );
  assert( pWriter->writer.pgidx.n==0 );


  sqlite3Fts5BufferSize(&p->rc, &pWriter->writer.pgidx, nBuffer);
  sqlite3Fts5BufferSize(&p->rc, &pWriter->writer.buf, nBuffer);

  if( p->pIdxWriter==0 ){
    Fts5Config *pConfig = p->pConfig;
    fts5IndexPrepareStmt(p, &p->pIdxWriter, sqlite3_mprintf(
          "INSERT INTO '%q'.'%q_idx'(segid,term,pgno) VALUES(?,?,?)",
          pConfig->zDb, pConfig->zName
    ));
  }

  if( p->rc==SQLITE_OK ){

    memset(pWriter->writer.buf.p, 0, 4);
    pWriter->writer.buf.n = 4;




    sqlite3_bind_int(p->pIdxWriter, 1, pWriter->iSegid);
  }
}
