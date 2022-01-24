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
typedef  void* sqlite_int64 ;
struct TYPE_4__ {int iHeight; int /*<<< orphan*/  term; int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; void* iLastChildBlock; void* iOpeningChildBlock; } ;
typedef  TYPE_1__ InteriorWriter ;
typedef  int /*<<< orphan*/  InteriorBlock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,void*,char const*,int) ; 

__attribute__((used)) static void FUNC5(int iHeight, const char *pTerm, int nTerm,
                               sqlite_int64 iChildBlock,
                               InteriorWriter *pWriter){
  InteriorBlock *block;
  FUNC2( iHeight>0 );
  FUNC1(pWriter);

  pWriter->iHeight = iHeight;
  pWriter->iOpeningChildBlock = iChildBlock;
#ifndef NDEBUG
  pWriter->iLastChildBlock = iChildBlock;
#endif
  block = FUNC4(iHeight, iChildBlock, pTerm, nTerm);
  pWriter->last = pWriter->first = block;
  FUNC0(pWriter->last);
  FUNC3(&pWriter->term, 0);
}