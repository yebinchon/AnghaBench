#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {int nCte; TYPE_1__* a; } ;
typedef  TYPE_2__ With ;
struct TYPE_6__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  pCols; int /*<<< orphan*/  pSelect; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static With *FUNC4(sqlite3 *db, With *p){
  With *pRet = 0;
  if( p ){
    int nByte = sizeof(*p) + sizeof(p->a[0]) * (p->nCte-1);
    pRet = FUNC0(db, nByte);
    if( pRet ){
      int i;
      pRet->nCte = p->nCte;
      for(i=0; i<p->nCte; i++){
        pRet->a[i].pSelect = FUNC3(db, p->a[i].pSelect, 0);
        pRet->a[i].pCols = FUNC2(db, p->a[i].pCols, 0);
        pRet->a[i].zName = FUNC1(db, p->a[i].zName);
      }
    }
  }
  return pRet;
}