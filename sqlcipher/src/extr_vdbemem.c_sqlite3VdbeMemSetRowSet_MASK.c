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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_5__ {char* z; int flags; int /*<<< orphan*/  xDel; int /*<<< orphan*/ * db; } ;
typedef  int /*<<< orphan*/  RowSet ;
typedef  TYPE_1__ Mem ;

/* Variables and functions */
 int MEM_Blob ; 
 int MEM_Dyn ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  sqlite3RowSetDelete ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(Mem *pMem){
  sqlite3 *db = pMem->db;
  RowSet *p;
  FUNC0( db!=0 );
  FUNC0( !FUNC2(pMem) );
  FUNC3(pMem);
  p = FUNC1(db);
  if( p==0 ) return SQLITE_NOMEM;
  pMem->z = (char*)p;
  pMem->flags = MEM_Blob|MEM_Dyn;
  pMem->xDel = sqlite3RowSetDelete;
  return SQLITE_OK;
}