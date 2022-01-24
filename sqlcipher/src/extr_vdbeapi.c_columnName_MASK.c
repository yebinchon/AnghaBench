#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_4__ {scalar_t__ mallocFailed; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_5__ {int /*<<< orphan*/ * aColName; TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const void *FUNC7(
  sqlite3_stmt *pStmt,     /* The statement */
  int N,                   /* Which column to get the name for */
  int useUtf16,            /* True to return the name as UTF16 */
  int useType              /* What type of name */
){
  const void *ret;
  Vdbe *p;
  int n;
  sqlite3 *db;
#ifdef SQLITE_ENABLE_API_ARMOR
  if( pStmt==0 ){
    (void)SQLITE_MISUSE_BKPT;
    return 0;
  }
#endif
  ret = 0;
  p = (Vdbe *)pStmt;
  db = p->db;
  FUNC0( db!=0 );
  n = FUNC2(pStmt);
  if( N<n && N>=0 ){
    N += useType*n;
    FUNC3(db->mutex);
    FUNC0( db->mallocFailed==0 );
#ifndef SQLITE_OMIT_UTF16
    if( useUtf16 ){
      ret = FUNC6((sqlite3_value*)&p->aColName[N]);
    }else
#endif
    {
      ret = FUNC5((sqlite3_value*)&p->aColName[N]);
    }
    /* A malloc may have failed inside of the _text() call. If this
    ** is the case, clear the mallocFailed flag and return NULL.
    */
    if( db->mallocFailed ){
      FUNC1(db);
      ret = 0;
    }
    FUNC4(db->mutex);
  }
  return ret;
}