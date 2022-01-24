#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int n; int /*<<< orphan*/ * z; } ;
typedef  TYPE_1__ Token ;
struct TYPE_6__ {TYPE_1__ sArg; } ;
typedef  TYPE_2__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(Parse *pParse, Token *p){
  Token *pArg = &pParse->sArg;
  if( pArg->z==0 ){
    pArg->z = p->z;
    pArg->n = p->n;
  }else{
    FUNC0(pArg->z <= p->z);
    pArg->n = (int)(&p->z[p->n] - pArg->z);
  }
}