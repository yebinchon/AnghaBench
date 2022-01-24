#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  scalar_t__ i64 ;
struct TYPE_17__ {int nn; int /*<<< orphan*/ * p; } ;
struct TYPE_16__ {int iLeafPgno; scalar_t__ bEof; char const* iRowid; int n; scalar_t__ p; TYPE_2__* pData; } ;
typedef  TYPE_1__ Fts5DlidxLvl ;
typedef  TYPE_2__ Fts5Data ;
typedef  TYPE_1__ Fts5Buffer ;

/* Variables and functions */
 scalar_t__ FTS5_AVERAGES_ROWID ; 
 int FTS5_CORRUPT ; 
 scalar_t__ FTS5_DATA_ZERO_PADDING ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int*,TYPE_1__*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int*,TYPE_1__*,int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC18 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC26(
  sqlite3_context *pCtx,          /* Function call context */
  int nArg,                       /* Number of args (always 2) */
  sqlite3_value **apVal           /* Function arguments */
){
  i64 iRowid;                     /* Rowid for record being decoded */
  int iSegid,iHeight,iPgno,bDlidx;/* Rowid components */
  const u8 *aBlob; int n;         /* Record to decode */
  u8 *a = 0;
  Fts5Buffer s;                   /* Build up text to return here */
  int rc = SQLITE_OK;             /* Return code */
  sqlite3_int64 nSpace = 0;
  int eDetailNone = (FUNC22(pCtx)!=0);

  FUNC1( nArg==2 );
  FUNC0(nArg);
  FUNC15(&s, 0, sizeof(Fts5Buffer));
  iRowid = FUNC25(apVal[0]);

  /* Make a copy of the second argument (a blob) in aBlob[]. The aBlob[]
  ** copy is followed by FTS5_DATA_ZERO_PADDING 0x00 bytes, which prevents
  ** buffer overreads even if the record is corrupt.  */
  n = FUNC24(apVal[1]);
  aBlob = FUNC23(apVal[1]);
  nSpace = n + FTS5_DATA_ZERO_PADDING;
  a = (u8*)FUNC18(&rc, nSpace);
  if( a==0 ) goto decode_out;
  if( n>0 ) FUNC14(a, aBlob, n);

  FUNC8(iRowid, &iSegid, &bDlidx, &iHeight, &iPgno);

  FUNC4(&rc, &s, iRowid);
  if( bDlidx ){
    Fts5Data dlidx;
    Fts5DlidxLvl lvl;

    dlidx.p = a;
    dlidx.nn = n;

    FUNC15(&lvl, 0, sizeof(Fts5DlidxLvl));
    lvl.pData = &dlidx;
    lvl.iLeafPgno = iPgno;

    for(FUNC11(&lvl); lvl.bEof==0; FUNC11(&lvl)){
      FUNC16(&rc, &s, 
          " %d(%lld)", lvl.iLeafPgno, lvl.iRowid
      );
    }
  }else if( iSegid==0 ){
    if( iRowid==FTS5_AVERAGES_ROWID ){
      FUNC5(&rc, &s, a, n);
    }else{
      FUNC10(&rc, &s, a, n);
    }
  }else if( eDetailNone ){
    Fts5Buffer term;              /* Current term read from page */
    int szLeaf;
    int iPgidxOff = szLeaf = FUNC12(&a[2]);
    int iTermOff;
    int nKeep = 0;
    int iOff;

    FUNC15(&term, 0, sizeof(Fts5Buffer));

    /* Decode any entries that occur before the first term. */
    if( szLeaf<n ){
      iPgidxOff += FUNC13(&a[iPgidxOff], iTermOff);
    }else{
      iTermOff = szLeaf;
    }
    FUNC9(&rc, &s, &a[4], iTermOff-4);

    iOff = iTermOff;
    while( iOff<szLeaf ){
      int nAppend;

      /* Read the term data for the next term*/
      iOff += FUNC13(&a[iOff], nAppend);
      term.n = nKeep;
      FUNC2(&rc, &term, nAppend, &a[iOff]);
      FUNC16(
          &rc, &s, " term=%.*s", term.n, (const char*)term.p
      );
      iOff += nAppend;

      /* Figure out where the doclist for this term ends */
      if( iPgidxOff<n ){
        int nIncr;
        iPgidxOff += FUNC13(&a[iPgidxOff], nIncr);
        iTermOff += nIncr;
      }else{
        iTermOff = szLeaf;
      }

      FUNC9(&rc, &s, &a[iOff], iTermOff-iOff);
      iOff = iTermOff;
      if( iOff<szLeaf ){
        iOff += FUNC13(&a[iOff], nKeep);
      }
    }

    FUNC3(&term);
  }else{
    Fts5Buffer term;              /* Current term read from page */
    int szLeaf;                   /* Offset of pgidx in a[] */
    int iPgidxOff;
    int iPgidxPrev = 0;           /* Previous value read from pgidx */
    int iTermOff = 0;
    int iRowidOff = 0;
    int iOff;
    int nDoclist;

    FUNC15(&term, 0, sizeof(Fts5Buffer));

    if( n<4 ){
      FUNC17(&rc, &s, 7, (const u8*)"corrupt");
      goto decode_out;
    }else{
      iRowidOff = FUNC12(&a[0]);
      iPgidxOff = szLeaf = FUNC12(&a[2]);
      if( iPgidxOff<n ){
        FUNC13(&a[iPgidxOff], iTermOff);
      }else if( iPgidxOff>n ){
        rc = FTS5_CORRUPT;
        goto decode_out;
      }
    }

    /* Decode the position list tail at the start of the page */
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
    FUNC7(&rc, &s, &a[4], iOff-4);

    /* Decode any more doclist data that appears on the page before the
    ** first term. */
    nDoclist = (iTermOff ? iTermOff : szLeaf) - iOff;
    if( nDoclist+iOff>n ){
      rc = FTS5_CORRUPT;
      goto decode_out;
    }
    FUNC6(&rc, &s, &a[iOff], nDoclist);

    while( iPgidxOff<n && rc==SQLITE_OK ){
      int bFirst = (iPgidxOff==szLeaf);     /* True for first term on page */
      int nByte;                            /* Bytes of data */
      int iEnd;
      
      iPgidxOff += FUNC13(&a[iPgidxOff], nByte);
      iPgidxPrev += nByte;
      iOff = iPgidxPrev;

      if( iPgidxOff<n ){
        FUNC13(&a[iPgidxOff], nByte);
        iEnd = iPgidxPrev + nByte;
      }else{
        iEnd = szLeaf;
      }
      if( iEnd>szLeaf ){
        rc = FTS5_CORRUPT;
        break;
      }

      if( bFirst==0 ){
        iOff += FUNC13(&a[iOff], nByte);
        if( nByte>term.n ){
          rc = FTS5_CORRUPT;
          break;
        }
        term.n = nByte;
      }
      iOff += FUNC13(&a[iOff], nByte);
      if( iOff+nByte>n ){
        rc = FTS5_CORRUPT;
        break;
      }
      FUNC2(&rc, &term, nByte, &a[iOff]);
      iOff += nByte;

      FUNC16(
          &rc, &s, " term=%.*s", term.n, (const char*)term.p
      );
      iOff += FUNC6(&rc, &s, &a[iOff], iEnd-iOff);
    }

    FUNC3(&term);
  }
  
 decode_out:
  FUNC19(a);
  if( rc==SQLITE_OK ){
    FUNC21(pCtx, (const char*)s.p, s.n, SQLITE_TRANSIENT);
  }else{
    FUNC20(pCtx, rc);
  }
  FUNC3(&s);
}