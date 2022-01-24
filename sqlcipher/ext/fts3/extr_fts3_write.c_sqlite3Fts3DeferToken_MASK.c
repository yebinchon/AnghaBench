#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* pDeferred; } ;
struct TYPE_9__ {int iCol; struct TYPE_9__* pNext; TYPE_1__* pToken; } ;
struct TYPE_8__ {TYPE_2__* pDeferred; } ;
typedef  TYPE_1__ Fts3PhraseToken ;
typedef  TYPE_2__ Fts3DeferredToken ;
typedef  TYPE_3__ Fts3Cursor ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (int) ; 

int FUNC3(
  Fts3Cursor *pCsr,               /* Fts3 table cursor */
  Fts3PhraseToken *pToken,        /* Token to defer */
  int iCol                        /* Column that token must appear in (or -1) */
){
  Fts3DeferredToken *pDeferred;
  pDeferred = FUNC2(sizeof(*pDeferred));
  if( !pDeferred ){
    return SQLITE_NOMEM;
  }
  FUNC1(pDeferred, 0, sizeof(*pDeferred));
  pDeferred->pToken = pToken;
  pDeferred->pNext = pCsr->pDeferred; 
  pDeferred->iCol = iCol;
  pCsr->pDeferred = pDeferred;

  FUNC0( pToken->pDeferred==0 );
  pToken->pDeferred = pDeferred;

  return SQLITE_OK;
}