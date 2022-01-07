
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int n; int * p; int member_2; int member_1; int member_0; } ;
struct TYPE_12__ {int szLeaf; int nn; int * p; } ;
struct TYPE_11__ {scalar_t__ rc; } ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5Data ;
typedef TYPE_3__ Fts5Buffer ;


 void* FTS5_CORRUPT ;
 scalar_t__ SQLITE_OK ;
 int fts5BufferAppendBlob (scalar_t__*,TYPE_3__*,int,int *) ;
 int fts5BufferCompare (TYPE_3__*,TYPE_3__*) ;
 int fts5BufferFree (TYPE_3__*) ;
 int fts5BufferSet (scalar_t__*,TYPE_3__*,int,int *) ;
 scalar_t__ fts5GetVarint32 (int *,int) ;

__attribute__((used)) static void fts5IntegrityCheckPgidx(Fts5Index *p, Fts5Data *pLeaf){
  int iTermOff = 0;
  int ii;

  Fts5Buffer buf1 = {0,0,0};
  Fts5Buffer buf2 = {0,0,0};

  ii = pLeaf->szLeaf;
  while( ii<pLeaf->nn && p->rc==SQLITE_OK ){
    int res;
    int iOff;
    int nIncr;

    ii += fts5GetVarint32(&pLeaf->p[ii], nIncr);
    iTermOff += nIncr;
    iOff = iTermOff;

    if( iOff>=pLeaf->szLeaf ){
      p->rc = FTS5_CORRUPT;
    }else if( iTermOff==nIncr ){
      int nByte;
      iOff += fts5GetVarint32(&pLeaf->p[iOff], nByte);
      if( (iOff+nByte)>pLeaf->szLeaf ){
        p->rc = FTS5_CORRUPT;
      }else{
        fts5BufferSet(&p->rc, &buf1, nByte, &pLeaf->p[iOff]);
      }
    }else{
      int nKeep, nByte;
      iOff += fts5GetVarint32(&pLeaf->p[iOff], nKeep);
      iOff += fts5GetVarint32(&pLeaf->p[iOff], nByte);
      if( nKeep>buf1.n || (iOff+nByte)>pLeaf->szLeaf ){
        p->rc = FTS5_CORRUPT;
      }else{
        buf1.n = nKeep;
        fts5BufferAppendBlob(&p->rc, &buf1, nByte, &pLeaf->p[iOff]);
      }

      if( p->rc==SQLITE_OK ){
        res = fts5BufferCompare(&buf1, &buf2);
        if( res<=0 ) p->rc = FTS5_CORRUPT;
      }
    }
    fts5BufferSet(&p->rc, &buf2, buf1.n, buf1.p);
  }

  fts5BufferFree(&buf1);
  fts5BufferFree(&buf2);
}
