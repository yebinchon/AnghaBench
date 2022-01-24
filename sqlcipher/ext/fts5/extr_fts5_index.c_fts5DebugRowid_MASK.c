#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ i64 ;
typedef  int /*<<< orphan*/  Fts5Buffer ;

/* Variables and functions */
 scalar_t__ FTS5_AVERAGES_ROWID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC2(int *pRc, Fts5Buffer *pBuf, i64 iKey){
  int iSegid, iHeight, iPgno, bDlidx;       /* Rowid compenents */
  FUNC0(iKey, &iSegid, &bDlidx, &iHeight, &iPgno);

  if( iSegid==0 ){
    if( iKey==FTS5_AVERAGES_ROWID ){
      FUNC1(pRc, pBuf, "{averages} ");
    }else{
      FUNC1(pRc, pBuf, "{structure}");
    }
  }
  else{
    FUNC1(pRc, pBuf, "{%ssegid=%d h=%d pgno=%d}",
        bDlidx ? "dlidx " : "", iSegid, iHeight, iPgno
    );
  }
}