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
typedef  int /*<<< orphan*/  Table ;
struct TYPE_5__ {int nVtabLock; int /*<<< orphan*/  db; int /*<<< orphan*/ ** apVtabLock; } ;
typedef  TYPE_1__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ **,int) ; 

void FUNC5(Parse *pParse, Table *pTab){
  Parse *pToplevel = FUNC3(pParse);
  int i, n;
  Table **apVtabLock;

  FUNC1( FUNC0(pTab) );
  for(i=0; i<pToplevel->nVtabLock; i++){
    if( pTab==pToplevel->apVtabLock[i] ) return;
  }
  n = (pToplevel->nVtabLock+1)*sizeof(pToplevel->apVtabLock[0]);
  apVtabLock = FUNC4(pToplevel->apVtabLock, n);
  if( apVtabLock ){
    pToplevel->apVtabLock = apVtabLock;
    pToplevel->apVtabLock[pToplevel->nVtabLock++] = pTab;
  }else{
    FUNC2(pToplevel->db);
  }
}