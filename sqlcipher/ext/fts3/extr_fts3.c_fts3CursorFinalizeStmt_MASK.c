#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pVtab; } ;
struct TYPE_7__ {scalar_t__ pStmt; scalar_t__ bSeekStmt; TYPE_1__ base; } ;
struct TYPE_6__ {scalar_t__ pSeekStmt; } ;
typedef  TYPE_2__ Fts3Table ;
typedef  TYPE_3__ Fts3Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(Fts3Cursor *pCsr){
  if( pCsr->bSeekStmt ){
    Fts3Table *p = (Fts3Table *)pCsr->base.pVtab;
    if( p->pSeekStmt==0 ){
      p->pSeekStmt = pCsr->pStmt;
      FUNC1(pCsr->pStmt);
      pCsr->pStmt = 0;
    }
    pCsr->bSeekStmt = 0;
  }
  FUNC0(pCsr->pStmt);
}