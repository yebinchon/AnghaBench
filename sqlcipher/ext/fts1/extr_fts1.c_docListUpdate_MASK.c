#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ iType; int /*<<< orphan*/  nData; int /*<<< orphan*/  pData; } ;
typedef  int /*<<< orphan*/  DocListReader ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(DocList *d, DocList *pUpdate){
  DocListReader reader;

  FUNC0( d!=NULL && pUpdate!=NULL );
  FUNC0( d->iType==pUpdate->iType);

  FUNC3(&reader, d);
  FUNC1(&reader, FUNC2(pUpdate),
                       pUpdate->pData, pUpdate->nData);
}