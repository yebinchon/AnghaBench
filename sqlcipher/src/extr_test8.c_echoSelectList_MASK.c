#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_uint64 ;
struct TYPE_5__ {int colUsed; } ;
typedef  TYPE_1__ sqlite3_index_info ;
struct TYPE_6__ {int nCol; int /*<<< orphan*/ * aCol; } ;
typedef  TYPE_2__ echo_vtab ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (char*,...) ; 

__attribute__((used)) static char *FUNC2(echo_vtab *pTab, sqlite3_index_info *pIdxInfo){
  char *zRet = 0;
  if( FUNC0()<3010000 ){
    zRet = FUNC1(", *");
  }else{
    int i;
    for(i=0; i<pTab->nCol; i++){
      if( pIdxInfo->colUsed & ((sqlite3_uint64)1 << (i>=63 ? 63 : i)) ){
        zRet = FUNC1("%z, %s", zRet, pTab->aCol[i]);
      }else{
        zRet = FUNC1("%z, NULL", zRet);
      }
      if( !zRet ) break;
    }
  }
  return zRet;
}