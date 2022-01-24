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
struct TYPE_8__ {scalar_t__ iType; } ;
struct TYPE_7__ {int iOffset; TYPE_2__* pOut; int /*<<< orphan*/  in; } ;
typedef  TYPE_1__ DocListMerge ;
typedef  TYPE_2__ DocList ;

/* Variables and functions */
 scalar_t__ DL_POSITIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(DocListMerge *m,
                      DocList *pIn, int iOffset, DocList *pOut){
  FUNC1(&m->in, pIn);
  m->pOut = pOut;
  m->iOffset = iOffset;

  /* can't handle offsets yet */
  FUNC0( pIn==NULL || pIn->iType <= DL_POSITIONS );
  FUNC0( pOut->iType <= DL_POSITIONS );
}