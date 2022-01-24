#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_4__ {int idxNum; } ;
typedef  TYPE_1__ spellfix1_cursor ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC2(
  sqlite3_vtab_cursor *cur, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  spellfix1_cursor *pCur = (spellfix1_cursor *)cur;
  int rc;
  pCur->idxNum = idxNum;
  if( idxNum & 1 ){
    rc = FUNC1(pCur, argc, argv);
  }else{
    rc = FUNC0(pCur, argc, argv);
  }
  return rc;
}