#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  writer ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ i64 ;
struct TYPE_20__ {int n; int /*<<< orphan*/ * p; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_19__ {scalar_t__ iRowid; int nPoslist; size_t nSize; int /*<<< orphan*/ * aPoslist; int /*<<< orphan*/ * aEof; } ;
struct TYPE_18__ {scalar_t__ rc; } ;
typedef  int /*<<< orphan*/  Fts5PoslistWriter ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5DoclistIter ;
typedef  TYPE_3__ Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (scalar_t__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static void FUNC14(
  Fts5Index *p,                   /* FTS5 backend object */
  Fts5Buffer *p1,                 /* First list to merge */
  Fts5Buffer *p2                  /* Second list to merge */
){
  if( p2->n ){
    i64 iLastRowid = 0;
    Fts5DoclistIter i1;
    Fts5DoclistIter i2;
    Fts5Buffer out = {0, 0, 0};
    Fts5Buffer tmp = {0, 0, 0};

    /* The maximum size of the output is equal to the sum of the two 
    ** input sizes + 1 varint (9 bytes). The extra varint is because if the
    ** first rowid in one input is a large negative number, and the first in
    ** the other a non-negative number, the delta for the non-negative
    ** number will be larger on disk than the literal integer value
    ** was.  */
    if( FUNC11(&p->rc, &out, p1->n + p2->n + 9) ) return;
    FUNC7(p1, &i1);
    FUNC7(p2, &i2);

    while( 1 ){
      if( i1.iRowid<i2.iRowid ){
        /* Copy entry from i1 */
        FUNC9(&out, iLastRowid, i1.iRowid);
        FUNC3(&out, i1.aPoslist, i1.nPoslist+i1.nSize);
        FUNC8(&i1);
        if( i1.aPoslist==0 ) break;
      }
      else if( i2.iRowid!=i1.iRowid ){
        /* Copy entry from i2 */
        FUNC9(&out, iLastRowid, i2.iRowid);
        FUNC3(&out, i2.aPoslist, i2.nPoslist+i2.nSize);
        FUNC8(&i2);
        if( i2.aPoslist==0 ) break;
      }
      else{
        /* Merge the two position lists. */ 
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
        FUNC10(&writer, 0, sizeof(writer));

        FUNC9(&out, iLastRowid, i2.iRowid);
        FUNC6(&tmp);
        FUNC11(&p->rc, &tmp, i1.nPoslist + i2.nPoslist);
        if( p->rc ) break;

        FUNC12(a1, i1.nPoslist, &iOff1, &iPos1);
        FUNC12(a2, i2.nPoslist, &iOff2, &iPos2);
        FUNC0( iPos1>=0 && iPos2>=0 );

        if( iPos1<iPos2 ){
          FUNC13(&tmp, &iPrev, iPos1);
          FUNC12(a1, i1.nPoslist, &iOff1, &iPos1);
        }else{
          FUNC13(&tmp, &iPrev, iPos2);
          FUNC12(a2, i2.nPoslist, &iOff2, &iPos2);
        }

        if( iPos1>=0 && iPos2>=0 ){
          while( 1 ){
            if( iPos1<iPos2 ){
              if( iPos1!=iPrev ){
                FUNC13(&tmp, &iPrev, iPos1);
              }
              FUNC12(a1, i1.nPoslist, &iOff1, &iPos1);
              if( iPos1<0 ) break;
            }else{
              FUNC1( iPos2!=iPrev );
              FUNC13(&tmp, &iPrev, iPos2);
              FUNC12(a2, i2.nPoslist, &iOff2, &iPos2);
              if( iPos2<0 ) break;
            }
          }
        }

        if( iPos1>=0 ){
          if( iPos1!=iPrev ){
            FUNC13(&tmp, &iPrev, iPos1);
          }
          aCopy = &a1[iOff1];
          nCopy = i1.nPoslist - iOff1;
        }else{
          FUNC0( iPos2>=0 && iPos2!=iPrev );
          FUNC13(&tmp, &iPrev, iPos2);
          aCopy = &a2[iOff2];
          nCopy = i2.nPoslist - iOff2;
        }
        if( nCopy>0 ){
          FUNC3(&tmp, aCopy, nCopy);
        }

        /* WRITEPOSLISTSIZE */
        FUNC4(&out, tmp.n * 2);
        FUNC3(&out, tmp.p, tmp.n);
        FUNC8(&i1);
        FUNC8(&i2);
        FUNC0( out.n<=(p1->n+p2->n+9) );
        if( i1.aPoslist==0 || i2.aPoslist==0 ) break;
      }
    }

    if( i1.aPoslist ){
      FUNC9(&out, iLastRowid, i1.iRowid);
      FUNC3(&out, i1.aPoslist, i1.aEof - i1.aPoslist);
    }
    else if( i2.aPoslist ){
      FUNC9(&out, iLastRowid, i2.iRowid);
      FUNC3(&out, i2.aPoslist, i2.aEof - i2.aPoslist);
    }
    FUNC0( out.n<=(p1->n+p2->n+9) );

    FUNC5(&p->rc, p1, out.n, out.p);
    FUNC2(&tmp);
    FUNC2(&out);
  }
}