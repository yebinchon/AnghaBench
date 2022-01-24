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
typedef  int /*<<< orphan*/  sqlite3_pcache ;
struct TYPE_7__ {TYPE_1__* pGroup; scalar_t__ bPurgeable; } ;
struct TYPE_6__ {int nMaxPage; } ;
typedef  TYPE_1__ PGroup ;
typedef  TYPE_2__ PCache1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(sqlite3_pcache *p){
  PCache1 *pCache = (PCache1*)p;
  if( pCache->bPurgeable ){
    PGroup *pGroup = pCache->pGroup;
    int savedMaxPage;
    FUNC1(pGroup);
    savedMaxPage = pGroup->nMaxPage;
    pGroup->nMaxPage = 0;
    FUNC0(pCache);
    pGroup->nMaxPage = savedMaxPage;
    FUNC2(pGroup);
  }
}