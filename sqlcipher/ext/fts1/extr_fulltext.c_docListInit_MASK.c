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
struct TYPE_3__ {int nData; scalar_t__ iLastOffset; scalar_t__ iLastPos; int /*<<< orphan*/  iType; int /*<<< orphan*/ * pData; } ;
typedef  int /*<<< orphan*/  DocListType ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static void FUNC2(DocList *d, DocListType iType,
                        const char *pData, int nData){
  d->nData = nData;
  if( nData>0 ){
    d->pData = FUNC0(nData);
    FUNC1(d->pData, pData, nData);
  } else {
    d->pData = NULL;
  }
  d->iType = iType;
  d->iLastPos = 0;
  d->iLastOffset = 0;
}