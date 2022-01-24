#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ db; char* zErr; char* zStaticErr; scalar_t__ pStmt; int /*<<< orphan*/  zArg; int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ Thread ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Thread *p){
  if( p->db==0 ){
    p->zErr = p->zStaticErr = "no database is open";
    p->rc = SQLITE_ERROR;
    return;
  }
  if( p->pStmt ){
    FUNC0(p->pStmt);
    p->pStmt = 0;
  }
  p->rc = FUNC1(p->db, p->zArg, -1, &p->pStmt, 0);
}