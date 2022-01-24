#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_4__ {scalar_t__ iLastDocid; size_t nData; size_t nSpace; scalar_t__* aData; int iLastCol; scalar_t__ iLastPos; } ;
typedef  TYPE_1__ PendingList ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__**,scalar_t__) ; 

__attribute__((used)) static int FUNC2(
  PendingList **pp,               /* IN/OUT: PendingList structure */
  sqlite3_int64 iDocid,           /* Docid for entry to add */
  sqlite3_int64 iCol,             /* Column for entry to add */
  sqlite3_int64 iPos,             /* Position of term for entry to add */
  int *pRc                        /* OUT: Return code */
){
  PendingList *p = *pp;
  int rc = SQLITE_OK;

  FUNC0( !p || p->iLastDocid<=iDocid );

  if( !p || p->iLastDocid!=iDocid ){
    sqlite3_int64 iDelta = iDocid - (p ? p->iLastDocid : 0);
    if( p ){
      FUNC0( p->nData<p->nSpace );
      FUNC0( p->aData[p->nData]==0 );
      p->nData++;
    }
    if( SQLITE_OK!=(rc = FUNC1(&p, iDelta)) ){
      goto pendinglistappend_out;
    }
    p->iLastCol = -1;
    p->iLastPos = 0;
    p->iLastDocid = iDocid;
  }
  if( iCol>0 && p->iLastCol!=iCol ){
    if( SQLITE_OK!=(rc = FUNC1(&p, 1))
     || SQLITE_OK!=(rc = FUNC1(&p, iCol))
    ){
      goto pendinglistappend_out;
    }
    p->iLastCol = iCol;
    p->iLastPos = 0;
  }
  if( iCol>=0 ){
    FUNC0( iPos>p->iLastPos || (iPos==0 && p->iLastPos==0) );
    rc = FUNC1(&p, 2+iPos-p->iLastPos);
    if( rc==SQLITE_OK ){
      p->iLastPos = iPos;
    }
  }

 pendinglistappend_out:
  *pRc = rc;
  if( p!=*pp ){
    *pp = p;
    return 1;
  }
  return 0;
}