#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zMsg ;
typedef  void* sqlite3_int64 ;
struct TYPE_6__ {int szPg; int iCol; } ;
typedef  TYPE_1__ GState ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int) ; 
 void* FUNC3 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,void*,...) ; 

__attribute__((used)) static void FUNC6(GState *p){
  int nCell;
  int i;
  int ofst;
  int nPayload;
  sqlite3_int64 rowid;
  int nHdr;
  int j;
  int scode;
  int sz;
  int dataOfst;
  char zMsg[200];

  nCell = FUNC0(p, 3);
  for(i=0; i<nCell; i++){
    ofst = FUNC0(p, 8+i*2);
    nPayload = FUNC3(p, &ofst);
    rowid = FUNC3(p, &ofst);
    if( nPayload > p->szPg-35 ){
      FUNC5(sizeof(zMsg), zMsg,
         "# overflow rowid %lld", rowid);
      FUNC4("%s\n", zMsg);
      continue;
    }
    dataOfst = ofst;
    nHdr = FUNC3(p, &ofst);
    dataOfst += nHdr;
    for(j=0; j<p->iCol; j++){
      scode = FUNC3(p, &ofst);
      dataOfst += FUNC2(scode);
    }
    scode = FUNC3(p, &ofst);
    sz = FUNC2(scode);
    FUNC5(sizeof(zMsg), zMsg,
         "rowid %12lld size %5d offset %8d",
          rowid, sz, FUNC1(p, dataOfst));
    FUNC4("%s\n", zMsg);
  }
}