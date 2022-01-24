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
struct TYPE_6__ {int (* xWalCallback ) (void*,TYPE_1__*,char const*,int) ;int /*<<< orphan*/  mutex; void* pWalArg; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void *FUNC3(
  sqlite3 *db,                    /* Attach the hook to this db handle */
  int(*xCallback)(void *, sqlite3*, const char*, int),
  void *pArg                      /* First argument passed to xCallback() */
){
#ifndef SQLITE_OMIT_WAL
  void *pRet;
#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) ){
    (void)SQLITE_MISUSE_BKPT;
    return 0;
  }
#endif
  FUNC1(db->mutex);
  pRet = db->pWalArg;
  db->xWalCallback = xCallback;
  db->pWalArg = pArg;
  FUNC2(db->mutex);
  return pRet;
#else
  return 0;
#endif
}