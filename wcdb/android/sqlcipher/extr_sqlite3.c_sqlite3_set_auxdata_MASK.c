#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ iOp; int isError; TYPE_2__* pOut; TYPE_4__* pVdbe; } ;
typedef  TYPE_3__ sqlite3_context ;
struct TYPE_11__ {TYPE_5__* pAuxData; int /*<<< orphan*/  db; } ;
typedef  TYPE_4__ Vdbe ;
struct TYPE_12__ {int iAuxArg; scalar_t__ iAuxOp; void (* xDeleteAux ) (void*) ;void* pAux; struct TYPE_12__* pNextAux; } ;
struct TYPE_9__ {TYPE_1__* db; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_5__ AuxData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void FUNC3 (void*) ; 

void FUNC4(
  sqlite3_context *pCtx, 
  int iArg, 
  void *pAux, 
  void (*xDelete)(void*)
){
  AuxData *pAuxData;
  Vdbe *pVdbe = pCtx->pVdbe;

  FUNC0( FUNC2(pCtx->pOut->db->mutex) );
#ifdef SQLITE_ENABLE_STAT3_OR_STAT4
  if( pVdbe==0 ) goto failed;
#else
  FUNC0( pVdbe!=0 );
#endif

  for(pAuxData=pVdbe->pAuxData; pAuxData; pAuxData=pAuxData->pNextAux){
    if( pAuxData->iAuxArg==iArg && (pAuxData->iAuxOp==pCtx->iOp || iArg<0) ){
      break;
    }
  }
  if( pAuxData==0 ){
    pAuxData = FUNC1(pVdbe->db, sizeof(AuxData));
    if( !pAuxData ) goto failed;
    pAuxData->iAuxOp = pCtx->iOp;
    pAuxData->iAuxArg = iArg;
    pAuxData->pNextAux = pVdbe->pAuxData;
    pVdbe->pAuxData = pAuxData;
    if( pCtx->isError==0 ) pCtx->isError = -1;
  }else if( pAuxData->xDeleteAux ){
    pAuxData->xDeleteAux(pAuxData->pAux);
  }

  pAuxData->pAux = pAux;
  pAuxData->xDeleteAux = xDelete;
  return;

failed:
  if( xDelete ){
    xDelete(pAux);
  }
}