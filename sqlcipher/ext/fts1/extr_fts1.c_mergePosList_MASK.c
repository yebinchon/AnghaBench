#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
struct TYPE_5__ {scalar_t__ iType; } ;
typedef  int /*<<< orphan*/  DocListReader ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 scalar_t__ DL_POSITIONS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
  DocListReader *pLeft,    /* Left position list */
  DocListReader *pRight,   /* Right position list */
  sqlite_int64 iDocid,     /* The docid from pLeft and pRight */
  DocList *pOut            /* Write the merged document record here */
){
  int iLeftCol, iLeftPos = FUNC2(pLeft, &iLeftCol);
  int iRightCol, iRightPos = FUNC2(pRight, &iRightCol);
  int match = 0;

  /* Loop until we've reached the end of both position lists. */
  while( iLeftPos!=-1 && iRightPos!=-1 ){
    if( iLeftCol==iRightCol && iLeftPos+1==iRightPos ){
      if( !match ){
        FUNC0(pOut, iDocid);
        match = 1;
      }
      if( pOut->iType>=DL_POSITIONS ){
        FUNC1(pOut, iRightCol, iRightPos);
      }
      iLeftPos = FUNC2(pLeft, &iLeftCol);
      iRightPos = FUNC2(pRight, &iRightCol);
    }else if( iRightCol<iLeftCol ||
              (iRightCol==iLeftCol && iRightPos<iLeftPos+1) ){
      iRightPos = FUNC2(pRight, &iRightCol);
    }else{
      iLeftPos = FUNC2(pLeft, &iLeftCol);
    }
  }
  if( iLeftPos>=0 ) FUNC3(pLeft);
  if( iRightPos>=0 ) FUNC3(pRight);
}