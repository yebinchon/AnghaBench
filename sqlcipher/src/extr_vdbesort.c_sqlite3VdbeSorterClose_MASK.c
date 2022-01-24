#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_8__ {int /*<<< orphan*/  aMemory; } ;
struct TYPE_10__ {TYPE_1__ list; } ;
typedef  TYPE_3__ VdbeSorter ;
struct TYPE_9__ {TYPE_3__* pSorter; } ;
struct TYPE_11__ {scalar_t__ eCurType; TYPE_2__ uc; } ;
typedef  TYPE_4__ VdbeCursor ;

/* Variables and functions */
 scalar_t__ CURTYPE_SORTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(sqlite3 *db, VdbeCursor *pCsr){
  VdbeSorter *pSorter;
  FUNC0( pCsr->eCurType==CURTYPE_SORTER );
  pSorter = pCsr->uc.pSorter;
  if( pSorter ){
    FUNC2(db, pSorter);
    FUNC3(pSorter->list.aMemory);
    FUNC1(db, pSorter);
    pCsr->uc.pSorter = 0;
  }
}