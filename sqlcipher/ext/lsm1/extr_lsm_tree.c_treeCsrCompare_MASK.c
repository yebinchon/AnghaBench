#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  nKey; } ;
typedef  TYPE_1__ TreeKey ;
struct TYPE_8__ {scalar_t__ iNode; int /*<<< orphan*/  blob; } ;
typedef  TYPE_2__ TreeCursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int FUNC4(TreeCursor *pCsr, void *pKey, int nKey, int *pRc){
  TreeKey *p;
  int cmp = 0;
  FUNC1( pCsr->iNode>=0 );
  p = FUNC2(pCsr, &pCsr->blob, pRc);
  if( p ){
    cmp = FUNC3(FUNC0(p), p->nKey, pKey, nKey);
  }
  return cmp;
}