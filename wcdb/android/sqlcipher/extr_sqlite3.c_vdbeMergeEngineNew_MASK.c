#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nTree; int* aTree; int /*<<< orphan*/ * aReadr; scalar_t__ pTask; } ;
typedef  int /*<<< orphan*/  PmaReader ;
typedef  TYPE_1__ MergeEngine ;

/* Variables and functions */
 int SORTER_MAX_MERGE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static MergeEngine *FUNC3(int nReader){
  int N = 2;                      /* Smallest power of two >= nReader */
  int nByte;                      /* Total bytes of space to allocate */
  MergeEngine *pNew;              /* Pointer to allocated object to return */

  FUNC0( nReader<=SORTER_MAX_MERGE_COUNT );

  while( N<nReader ) N += N;
  nByte = sizeof(MergeEngine) + N * (sizeof(int) + sizeof(PmaReader));

  pNew = FUNC1(100) ? 0 : (MergeEngine*)FUNC2(nByte);
  if( pNew ){
    pNew->nTree = N;
    pNew->pTask = 0;
    pNew->aReadr = (PmaReader*)&pNew[1];
    pNew->aTree = (int*)&pNew->aReadr[N];
  }
  return pNew;
}