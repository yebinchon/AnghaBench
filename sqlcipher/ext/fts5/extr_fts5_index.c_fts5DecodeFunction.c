
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_value ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_context ;
typedef scalar_t__ i64 ;
struct TYPE_17__ {int nn; int * p; } ;
struct TYPE_16__ {int iLeafPgno; scalar_t__ bEof; char const* iRowid; int n; scalar_t__ p; TYPE_2__* pData; } ;
typedef TYPE_1__ Fts5DlidxLvl ;
typedef TYPE_2__ Fts5Data ;
typedef TYPE_1__ Fts5Buffer ;


 scalar_t__ FTS5_AVERAGES_ROWID ;
 int FTS5_CORRUPT ;
 scalar_t__ FTS5_DATA_ZERO_PADDING ;
 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int UNUSED_PARAM (int) ;
 int assert (int) ;
 int fts5BufferAppendBlob (int*,TYPE_1__*,int,int *) ;
 int fts5BufferFree (TYPE_1__*) ;
 int fts5DebugRowid (int*,TYPE_1__*,scalar_t__) ;
 int fts5DecodeAverages (int*,TYPE_1__*,int *,int) ;
 scalar_t__ fts5DecodeDoclist (int*,TYPE_1__*,int *,int) ;
 int fts5DecodePoslist (int*,TYPE_1__*,int *,int) ;
 int fts5DecodeRowid (scalar_t__,int*,int*,int*,int*) ;
 int fts5DecodeRowidList (int*,TYPE_1__*,int *,int) ;
 int fts5DecodeStructure (int*,TYPE_1__*,int *,int) ;
 int fts5DlidxLvlNext (TYPE_1__*) ;
 int fts5GetU16 (int *) ;
 scalar_t__ fts5GetVarint32 (int *,int) ;
 int memcpy (int *,int const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3Fts5BufferAppendPrintf (int*,TYPE_1__*,char*,int,char const*) ;
 int sqlite3Fts5BufferSet (int*,TYPE_1__*,int,int const*) ;
 scalar_t__ sqlite3Fts5MallocZero (int*,scalar_t__) ;
 int sqlite3_free (int *) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;
 scalar_t__ sqlite3_user_data (int *) ;
 int * sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_int64 (int *) ;

__attribute__((used)) static void fts5DecodeFunction(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apVal
){
  i64 iRowid;
  int iSegid,iHeight,iPgno,bDlidx;
  const u8 *aBlob; int n;
  u8 *a = 0;
  Fts5Buffer s;
  int rc = SQLITE_OK;
  sqlite3_int64 nSpace = 0;
  int eDetailNone = (sqlite3_user_data(pCtx)!=0);

  assert( nArg==2 );
  UNUSED_PARAM(nArg);
  memset(&s, 0, sizeof(Fts5Buffer));
  iRowid = sqlite3_value_int64(apVal[0]);




  n = sqlite3_value_bytes(apVal[1]);
  aBlob = sqlite3_value_blob(apVal[1]);
  nSpace = n + FTS5_DATA_ZERO_PADDING;
  a = (u8*)sqlite3Fts5MallocZero(&rc, nSpace);
  if( a==0 ) goto decode_out;
  if( n>0 ) memcpy(a, aBlob, n);

  fts5DecodeRowid(iRowid, &iSegid, &bDlidx, &iHeight, &iPgno);

  fts5DebugRowid(&rc, &s, iRowid);
  if( bDlidx ){
    Fts5Data dlidx;
    Fts5DlidxLvl lvl;

    dlidx.p = a;
    dlidx.nn = n;

    memset(&lvl, 0, sizeof(Fts5DlidxLvl));
    lvl.pData = &dlidx;
    lvl.iLeafPgno = iPgno;

    for(fts5DlidxLvlNext(&lvl); lvl.bEof==0; fts5DlidxLvlNext(&lvl)){
      sqlite3Fts5BufferAppendPrintf(&rc, &s,
          " %d(%lld)", lvl.iLeafPgno, lvl.iRowid
      );
    }
  }else if( iSegid==0 ){
    if( iRowid==FTS5_AVERAGES_ROWID ){
      fts5DecodeAverages(&rc, &s, a, n);
    }else{
      fts5DecodeStructure(&rc, &s, a, n);
    }
  }else if( eDetailNone ){
    Fts5Buffer term;
    int szLeaf;
    int iPgidxOff = szLeaf = fts5GetU16(&a[2]);
    int iTermOff;
    int nKeep = 0;
    int iOff;

    memset(&term, 0, sizeof(Fts5Buffer));


    if( szLeaf<n ){
      iPgidxOff += fts5GetVarint32(&a[iPgidxOff], iTermOff);
    }else{
      iTermOff = szLeaf;
    }
    fts5DecodeRowidList(&rc, &s, &a[4], iTermOff-4);

    iOff = iTermOff;
    while( iOff<szLeaf ){
      int nAppend;


      iOff += fts5GetVarint32(&a[iOff], nAppend);
      term.n = nKeep;
      fts5BufferAppendBlob(&rc, &term, nAppend, &a[iOff]);
      sqlite3Fts5BufferAppendPrintf(
          &rc, &s, " term=%.*s", term.n, (const char*)term.p
      );
      iOff += nAppend;


      if( iPgidxOff<n ){
        int nIncr;
        iPgidxOff += fts5GetVarint32(&a[iPgidxOff], nIncr);
        iTermOff += nIncr;
      }else{
        iTermOff = szLeaf;
      }

      fts5DecodeRowidList(&rc, &s, &a[iOff], iTermOff-iOff);
      iOff = iTermOff;
      if( iOff<szLeaf ){
        iOff += fts5GetVarint32(&a[iOff], nKeep);
      }
    }

    fts5BufferFree(&term);
  }else{
    Fts5Buffer term;
    int szLeaf;
    int iPgidxOff;
    int iPgidxPrev = 0;
    int iTermOff = 0;
    int iRowidOff = 0;
    int iOff;
    int nDoclist;

    memset(&term, 0, sizeof(Fts5Buffer));

    if( n<4 ){
      sqlite3Fts5BufferSet(&rc, &s, 7, (const u8*)"corrupt");
      goto decode_out;
    }else{
      iRowidOff = fts5GetU16(&a[0]);
      iPgidxOff = szLeaf = fts5GetU16(&a[2]);
      if( iPgidxOff<n ){
        fts5GetVarint32(&a[iPgidxOff], iTermOff);
      }else if( iPgidxOff>n ){
        rc = FTS5_CORRUPT;
        goto decode_out;
      }
    }


    if( iRowidOff!=0 ){
      iOff = iRowidOff;
    }else if( iTermOff!=0 ){
      iOff = iTermOff;
    }else{
      iOff = szLeaf;
    }
    if( iOff>n ){
      rc = FTS5_CORRUPT;
      goto decode_out;
    }
    fts5DecodePoslist(&rc, &s, &a[4], iOff-4);



    nDoclist = (iTermOff ? iTermOff : szLeaf) - iOff;
    if( nDoclist+iOff>n ){
      rc = FTS5_CORRUPT;
      goto decode_out;
    }
    fts5DecodeDoclist(&rc, &s, &a[iOff], nDoclist);

    while( iPgidxOff<n && rc==SQLITE_OK ){
      int bFirst = (iPgidxOff==szLeaf);
      int nByte;
      int iEnd;

      iPgidxOff += fts5GetVarint32(&a[iPgidxOff], nByte);
      iPgidxPrev += nByte;
      iOff = iPgidxPrev;

      if( iPgidxOff<n ){
        fts5GetVarint32(&a[iPgidxOff], nByte);
        iEnd = iPgidxPrev + nByte;
      }else{
        iEnd = szLeaf;
      }
      if( iEnd>szLeaf ){
        rc = FTS5_CORRUPT;
        break;
      }

      if( bFirst==0 ){
        iOff += fts5GetVarint32(&a[iOff], nByte);
        if( nByte>term.n ){
          rc = FTS5_CORRUPT;
          break;
        }
        term.n = nByte;
      }
      iOff += fts5GetVarint32(&a[iOff], nByte);
      if( iOff+nByte>n ){
        rc = FTS5_CORRUPT;
        break;
      }
      fts5BufferAppendBlob(&rc, &term, nByte, &a[iOff]);
      iOff += nByte;

      sqlite3Fts5BufferAppendPrintf(
          &rc, &s, " term=%.*s", term.n, (const char*)term.p
      );
      iOff += fts5DecodeDoclist(&rc, &s, &a[iOff], iEnd-iOff);
    }

    fts5BufferFree(&term);
  }

 decode_out:
  sqlite3_free(a);
  if( rc==SQLITE_OK ){
    sqlite3_result_text(pCtx, (const char*)s.p, s.n, SQLITE_TRANSIENT);
  }else{
    sqlite3_result_error_code(pCtx, rc);
  }
  fts5BufferFree(&s);
}
