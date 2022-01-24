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
typedef  int /*<<< orphan*/  sqlite3_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 

int FUNC3(
  sqlite3_int64 iDelta,           /* Varint that may be written to pOut */
  char *pList,                    /* Position list (no 0x00 term) */
  int nList,                      /* Size of pList in bytes */
  char *pOut                      /* Write output here */
){
  int nOut = 0;
  int bWritten = 0;               /* True once iDelta has been written */
  char *p = pList;
  char *pEnd = &pList[nList];

  if( *p!=0x01 ){
    if( *p==0x02 ){
      nOut += FUNC2(&pOut[nOut], iDelta);
      pOut[nOut++] = 0x02;
      bWritten = 1;
    }
    FUNC0(0, &p);
  }

  while( p<pEnd ){
    sqlite3_int64 iCol;
    p++;
    p += FUNC1(p, &iCol);
    if( *p==0x02 ){
      if( bWritten==0 ){
        nOut += FUNC2(&pOut[nOut], iDelta);
        bWritten = 1;
      }
      pOut[nOut++] = 0x01;
      nOut += FUNC2(&pOut[nOut], iCol);
      pOut[nOut++] = 0x02;
    }
    FUNC0(0, &p);
  }
  if( bWritten ){
    pOut[nOut++] = 0x00;
  }

  return nOut;
}