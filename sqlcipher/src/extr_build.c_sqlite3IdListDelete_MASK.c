#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_6__ {struct TYPE_6__* zName; } ;
struct TYPE_5__ {int nId; TYPE_4__* a; } ;
typedef  TYPE_1__ IdList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC2(sqlite3 *db, IdList *pList){
  int i;
  if( pList==0 ) return;
  for(i=0; i<pList->nId; i++){
    FUNC0(db, pList->a[i].zName);
  }
  FUNC0(db, pList->a);
  FUNC1(db, pList);
}