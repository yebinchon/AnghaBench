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
typedef  int sqlite3_int64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(
  const unsigned char *aData,   /* Content to print */
  int nData                     /* Number of bytes of content */
){
  sqlite3_int64 iPrevDocid = 0;
  sqlite3_int64 iDocid;
  sqlite3_int64 iPos;
  sqlite3_int64 iPrevPos = 0;
  sqlite3_int64 iCol;
  int i = 0;

  while( i<nData ){
    i += FUNC0(aData+i, &iDocid);
    FUNC1("docid %lld col0", iDocid+iPrevDocid);
    iPrevDocid += iDocid;
    iPrevPos = 0;
    while( 1 ){
      i += FUNC0(aData+i, &iPos);
      if( iPos==1 ){
        i += FUNC0(aData+i, &iCol);
        FUNC1(" col%lld", iCol);
        iPrevPos = 0;
      }else if( iPos==0 ){
        FUNC1("\n");
        break;
      }else{
        iPrevPos += iPos - 2;
        FUNC1(" %lld", iPrevPos);
      }
    }
  }
}