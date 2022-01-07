
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int writer ;
typedef int u8 ;
typedef scalar_t__ i64 ;
struct TYPE_20__ {int n; int * p; int member_2; int member_1; int member_0; } ;
struct TYPE_19__ {scalar_t__ iRowid; int nPoslist; size_t nSize; int * aPoslist; int * aEof; } ;
struct TYPE_18__ {scalar_t__ rc; } ;
typedef int Fts5PoslistWriter ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5DoclistIter ;
typedef TYPE_3__ Fts5Buffer ;


 int assert (int) ;
 int assert_nc (int) ;
 int fts5BufferFree (TYPE_3__*) ;
 int fts5BufferSafeAppendBlob (TYPE_3__*,int *,int) ;
 int fts5BufferSafeAppendVarint (TYPE_3__*,int) ;
 int fts5BufferSet (scalar_t__*,TYPE_3__*,scalar_t__,int *) ;
 int fts5BufferZero (TYPE_3__*) ;
 int fts5DoclistIterInit (TYPE_3__*,TYPE_2__*) ;
 int fts5DoclistIterNext (TYPE_2__*) ;
 int fts5MergeAppendDocid (TYPE_3__*,scalar_t__,scalar_t__) ;
 int memset (int *,int ,int) ;
 scalar_t__ sqlite3Fts5BufferSize (scalar_t__*,TYPE_3__*,int) ;
 int sqlite3Fts5PoslistNext64 (int *,int,int*,scalar_t__*) ;
 int sqlite3Fts5PoslistSafeAppend (TYPE_3__*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static void fts5MergePrefixLists(
  Fts5Index *p,
  Fts5Buffer *p1,
  Fts5Buffer *p2
){
  if( p2->n ){
    i64 iLastRowid = 0;
    Fts5DoclistIter i1;
    Fts5DoclistIter i2;
    Fts5Buffer out = {0, 0, 0};
    Fts5Buffer tmp = {0, 0, 0};







    if( sqlite3Fts5BufferSize(&p->rc, &out, p1->n + p2->n + 9) ) return;
    fts5DoclistIterInit(p1, &i1);
    fts5DoclistIterInit(p2, &i2);

    while( 1 ){
      if( i1.iRowid<i2.iRowid ){

        fts5MergeAppendDocid(&out, iLastRowid, i1.iRowid);
        fts5BufferSafeAppendBlob(&out, i1.aPoslist, i1.nPoslist+i1.nSize);
        fts5DoclistIterNext(&i1);
        if( i1.aPoslist==0 ) break;
      }
      else if( i2.iRowid!=i1.iRowid ){

        fts5MergeAppendDocid(&out, iLastRowid, i2.iRowid);
        fts5BufferSafeAppendBlob(&out, i2.aPoslist, i2.nPoslist+i2.nSize);
        fts5DoclistIterNext(&i2);
        if( i2.aPoslist==0 ) break;
      }
      else{

        i64 iPos1 = 0;
        i64 iPos2 = 0;
        int iOff1 = 0;
        int iOff2 = 0;
        u8 *a1 = &i1.aPoslist[i1.nSize];
        u8 *a2 = &i2.aPoslist[i2.nSize];
        int nCopy;
        u8 *aCopy;

        i64 iPrev = 0;
        Fts5PoslistWriter writer;
        memset(&writer, 0, sizeof(writer));

        fts5MergeAppendDocid(&out, iLastRowid, i2.iRowid);
        fts5BufferZero(&tmp);
        sqlite3Fts5BufferSize(&p->rc, &tmp, i1.nPoslist + i2.nPoslist);
        if( p->rc ) break;

        sqlite3Fts5PoslistNext64(a1, i1.nPoslist, &iOff1, &iPos1);
        sqlite3Fts5PoslistNext64(a2, i2.nPoslist, &iOff2, &iPos2);
        assert( iPos1>=0 && iPos2>=0 );

        if( iPos1<iPos2 ){
          sqlite3Fts5PoslistSafeAppend(&tmp, &iPrev, iPos1);
          sqlite3Fts5PoslistNext64(a1, i1.nPoslist, &iOff1, &iPos1);
        }else{
          sqlite3Fts5PoslistSafeAppend(&tmp, &iPrev, iPos2);
          sqlite3Fts5PoslistNext64(a2, i2.nPoslist, &iOff2, &iPos2);
        }

        if( iPos1>=0 && iPos2>=0 ){
          while( 1 ){
            if( iPos1<iPos2 ){
              if( iPos1!=iPrev ){
                sqlite3Fts5PoslistSafeAppend(&tmp, &iPrev, iPos1);
              }
              sqlite3Fts5PoslistNext64(a1, i1.nPoslist, &iOff1, &iPos1);
              if( iPos1<0 ) break;
            }else{
              assert_nc( iPos2!=iPrev );
              sqlite3Fts5PoslistSafeAppend(&tmp, &iPrev, iPos2);
              sqlite3Fts5PoslistNext64(a2, i2.nPoslist, &iOff2, &iPos2);
              if( iPos2<0 ) break;
            }
          }
        }

        if( iPos1>=0 ){
          if( iPos1!=iPrev ){
            sqlite3Fts5PoslistSafeAppend(&tmp, &iPrev, iPos1);
          }
          aCopy = &a1[iOff1];
          nCopy = i1.nPoslist - iOff1;
        }else{
          assert( iPos2>=0 && iPos2!=iPrev );
          sqlite3Fts5PoslistSafeAppend(&tmp, &iPrev, iPos2);
          aCopy = &a2[iOff2];
          nCopy = i2.nPoslist - iOff2;
        }
        if( nCopy>0 ){
          fts5BufferSafeAppendBlob(&tmp, aCopy, nCopy);
        }


        fts5BufferSafeAppendVarint(&out, tmp.n * 2);
        fts5BufferSafeAppendBlob(&out, tmp.p, tmp.n);
        fts5DoclistIterNext(&i1);
        fts5DoclistIterNext(&i2);
        assert( out.n<=(p1->n+p2->n+9) );
        if( i1.aPoslist==0 || i2.aPoslist==0 ) break;
      }
    }

    if( i1.aPoslist ){
      fts5MergeAppendDocid(&out, iLastRowid, i1.iRowid);
      fts5BufferSafeAppendBlob(&out, i1.aPoslist, i1.aEof - i1.aPoslist);
    }
    else if( i2.aPoslist ){
      fts5MergeAppendDocid(&out, iLastRowid, i2.iRowid);
      fts5BufferSafeAppendBlob(&out, i2.aPoslist, i2.aEof - i2.aPoslist);
    }
    assert( out.n<=(p1->n+p2->n+9) );

    fts5BufferSet(&p->rc, p1, out.n, out.p);
    fts5BufferFree(&tmp);
    fts5BufferFree(&out);
  }
}
