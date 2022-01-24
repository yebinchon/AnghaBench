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
struct Cte {TYPE_1__* zName; int /*<<< orphan*/  pSelect; int /*<<< orphan*/  pCols; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int nCte; struct Cte* a; } ;
typedef  TYPE_1__ With ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(sqlite3 *db, With *pWith){
  if( pWith ){
    int i;
    for(i=0; i<pWith->nCte; i++){
      struct Cte *pCte = &pWith->a[i];
      FUNC1(db, pCte->pCols);
      FUNC2(db, pCte->pSelect);
      FUNC0(db, pCte->zName);
    }
    FUNC0(db, pWith);
  }
}