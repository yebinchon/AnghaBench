#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VdbeSorter ;
struct TYPE_8__ {int /*<<< orphan*/ * pSorter; } ;
struct TYPE_9__ {scalar_t__ eCurType; TYPE_1__ uc; } ;
typedef  TYPE_2__ VdbeCursor ;
struct TYPE_10__ {int n; int /*<<< orphan*/  z; } ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 scalar_t__ CURTYPE_SORTER ; 
 int /*<<< orphan*/  MEM_Blob ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int*) ; 

int FUNC5(const VdbeCursor *pCsr, Mem *pOut){
  VdbeSorter *pSorter;
  void *pKey; int nKey;           /* Sorter key to copy into pOut */

  FUNC1( pCsr->eCurType==CURTYPE_SORTER );
  pSorter = pCsr->uc.pSorter;
  pKey = FUNC4(pSorter, &nKey);
  if( FUNC3(pOut, nKey) ){
    return SQLITE_NOMEM_BKPT;
  }
  pOut->n = nKey;
  FUNC0(pOut, MEM_Blob);
  FUNC2(pOut->z, pKey, nKey);

  return SQLITE_OK;
}