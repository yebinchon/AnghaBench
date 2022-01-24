#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_8__ {TYPE_2__* pSorter; } ;
struct TYPE_7__ {TYPE_1__* pKeyInfo; } ;
struct TYPE_6__ {int nKeyField; scalar_t__* aSortOrder; } ;
typedef  TYPE_3__ SortSubtask ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (size_t const*,int) ; 
 int FUNC2 (size_t const* const,size_t const* const,int) ; 
 int FUNC3 (TYPE_3__*,int*,void const*,int,void const*,int) ; 

__attribute__((used)) static int FUNC4(
  SortSubtask *pTask,             /* Subtask context (for pKeyInfo) */
  int *pbKey2Cached,              /* True if pTask->pUnpacked is pKey2 */
  const void *pKey1, int nKey1,   /* Left side of comparison */
  const void *pKey2, int nKey2    /* Right side of comparison */
){
  const u8 * const p1 = (const u8 * const)pKey1;
  const u8 * const p2 = (const u8 * const)pKey2;
  const u8 * const v1 = &p1[ p1[0] ];   /* Pointer to value 1 */
  const u8 * const v2 = &p2[ p2[0] ];   /* Pointer to value 2 */

  int n1;
  int n2;
  int res;

  FUNC1(&p1[1], n1);
  FUNC1(&p2[1], n2);
  res = FUNC2(v1, v2, (FUNC0(n1, n2) - 13)/2);
  if( res==0 ){
    res = n1 - n2;
  }

  if( res==0 ){
    if( pTask->pSorter->pKeyInfo->nKeyField>1 ){
      res = FUNC3(
          pTask, pbKey2Cached, pKey1, nKey1, pKey2, nKey2
      );
    }
  }else{
    if( pTask->pSorter->pKeyInfo->aSortOrder[0] ){
      res = res * -1;
    }
  }

  return res;
}