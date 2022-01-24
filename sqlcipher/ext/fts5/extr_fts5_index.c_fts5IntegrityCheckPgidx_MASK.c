#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int n; int /*<<< orphan*/ * p; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int szLeaf; int nn; int /*<<< orphan*/ * p; } ;
struct TYPE_11__ {scalar_t__ rc; } ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5Data ;
typedef  TYPE_3__ Fts5Buffer ;

/* Variables and functions */
 void* FTS5_CORRUPT ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(Fts5Index *p, Fts5Data *pLeaf){
  int iTermOff = 0;
  int ii;

  Fts5Buffer buf1 = {0,0,0};
  Fts5Buffer buf2 = {0,0,0};

  ii = pLeaf->szLeaf;
  while( ii<pLeaf->nn && p->rc==SQLITE_OK ){
    int res;
    int iOff;
    int nIncr;

    ii += FUNC4(&pLeaf->p[ii], nIncr);
    iTermOff += nIncr;
    iOff = iTermOff;

    if( iOff>=pLeaf->szLeaf ){
      p->rc = FTS5_CORRUPT;
    }else if( iTermOff==nIncr ){
      int nByte;
      iOff += FUNC4(&pLeaf->p[iOff], nByte);
      if( (iOff+nByte)>pLeaf->szLeaf ){
        p->rc = FTS5_CORRUPT;
      }else{
        FUNC3(&p->rc, &buf1, nByte, &pLeaf->p[iOff]);
      }
    }else{
      int nKeep, nByte;
      iOff += FUNC4(&pLeaf->p[iOff], nKeep);
      iOff += FUNC4(&pLeaf->p[iOff], nByte);
      if( nKeep>buf1.n || (iOff+nByte)>pLeaf->szLeaf ){
        p->rc = FTS5_CORRUPT;
      }else{
        buf1.n = nKeep;
        FUNC0(&p->rc, &buf1, nByte, &pLeaf->p[iOff]);
      }

      if( p->rc==SQLITE_OK ){
        res = FUNC1(&buf1, &buf2);
        if( res<=0 ) p->rc = FTS5_CORRUPT;
      }
    }
    FUNC3(&p->rc, &buf2, buf1.n, buf1.p);
  }

  FUNC2(&buf1);
  FUNC2(&buf2);
}