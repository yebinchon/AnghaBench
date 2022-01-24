#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ pData; } ;
typedef  TYPE_1__ ExpertCsr ;

/* Variables and functions */
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab_cursor *cur){
  ExpertCsr *pCsr = (ExpertCsr*)cur;
  int rc = SQLITE_OK;

  FUNC0( pCsr->pData );
  rc = FUNC2(pCsr->pData);
  if( rc!=SQLITE_ROW ){
    rc = FUNC1(pCsr->pData);
    pCsr->pData = 0;
  }else{
    rc = SQLITE_OK;
  }

  return rc;
}