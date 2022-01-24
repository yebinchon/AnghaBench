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
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_4__ {int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_1__ Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;
typedef  int /*<<< orphan*/  Index ;

/* Variables and functions */
 int /*<<< orphan*/  P4_KEYINFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(Parse *pParse, Index *pIdx){
  Vdbe *v = pParse->pVdbe;
  KeyInfo *pKeyInfo;
  FUNC0( v!=0 );
  FUNC0( pIdx!=0 );
  pKeyInfo = FUNC1(pParse, pIdx);
  if( pKeyInfo ) FUNC2(v, pKeyInfo, P4_KEYINFO);
}