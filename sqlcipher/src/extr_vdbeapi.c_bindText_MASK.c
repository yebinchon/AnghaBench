#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_6__ {TYPE_3__* db; int /*<<< orphan*/ * aVar; } ;
typedef  TYPE_1__ Vdbe ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  Mem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int SQLITE_OK ; 
 void FUNC1 (void*) ; 
 void FUNC2 (void*) ; 
 int FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,void const*,int,scalar_t__,void (*) (void*)) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC9(
  sqlite3_stmt *pStmt,   /* The statement to bind against */
  int i,                 /* Index of the parameter to bind */
  const void *zData,     /* Pointer to the data to be bound */
  int nData,             /* Number of bytes of data to be bound */
  void (*xDel)(void*),   /* Destructor for the data */
  u8 encoding            /* Encoding for the data */
){
  Vdbe *p = (Vdbe *)pStmt;
  Mem *pVar;
  int rc;

  rc = FUNC8(p, i);
  if( rc==SQLITE_OK ){
    if( zData!=0 ){
      pVar = &p->aVar[i-1];
      rc = FUNC6(pVar, zData, nData, encoding, xDel);
      if( rc==SQLITE_OK && encoding!=0 ){
        rc = FUNC5(pVar, FUNC0(p->db));
      }
      if( rc ){
        FUNC4(p->db, rc);
        rc = FUNC3(p->db, rc);
      }
    }
    FUNC7(p->db->mutex);
  }else if( xDel!=SQLITE_STATIC && xDel!=SQLITE_TRANSIENT ){
    xDel((void*)zData);
  }
  return rc;
}