#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ eDetail; } ;
struct TYPE_7__ {scalar_t__ pVtab; } ;
struct TYPE_10__ {TYPE_1__ base; } ;
struct TYPE_9__ {int* a; int* b; } ;
struct TYPE_8__ {TYPE_5__* pConfig; } ;
typedef  TYPE_2__ Fts5Table ;
typedef  TYPE_3__ Fts5PhraseIter ;
typedef  TYPE_4__ Fts5Cursor ;
typedef  int /*<<< orphan*/  Fts5Context ;
typedef  TYPE_5__ Fts5Config ;

/* Variables and functions */
 scalar_t__ FTS5_DETAIL_COLUMNS ; 
 scalar_t__ FUNC0 (int*,int) ; 

__attribute__((used)) static void FUNC1(
  Fts5Context *pCtx, 
  Fts5PhraseIter *pIter, 
  int *piCol
){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  Fts5Config *pConfig = ((Fts5Table*)(pCsr->base.pVtab))->pConfig;

  if( pConfig->eDetail==FTS5_DETAIL_COLUMNS ){
    if( pIter->a>=pIter->b ){
      *piCol = -1;
    }else{
      int iIncr;
      pIter->a += FUNC0(&pIter->a[0], iIncr);
      *piCol += (iIncr-2);
    }
  }else{
    while( 1 ){
      int dummy;
      if( pIter->a>=pIter->b ){
        *piCol = -1;
        return;
      }
      if( pIter->a[0]==0x01 ) break;
      pIter->a += FUNC0(pIter->a, dummy);
    }
    pIter->a += 1 + FUNC0(&pIter->a[1], *piCol);
  }
}