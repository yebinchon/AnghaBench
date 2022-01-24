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
struct TYPE_2__ {int /*<<< orphan*/  iRowid; } ;
typedef  TYPE_1__ templatevtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int SQLITE_OK ; 
#define  TEMPLATEVTAB_A 128 
 int TEMPLATEVTAB_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
  sqlite3_vtab_cursor *cur,   /* The cursor */
  sqlite3_context *ctx,       /* First argument to sqlite3_result_...() */
  int i                       /* Which column to return */
){
  templatevtab_cursor *pCur = (templatevtab_cursor*)cur;
  switch( i ){
    case TEMPLATEVTAB_A:
      FUNC1(ctx, 1000 + pCur->iRowid);
      break;
    default:
      FUNC0( i==TEMPLATEVTAB_B );
      FUNC1(ctx, 2000 + pCur->iRowid);
      break;
  }
  return SQLITE_OK;
}