#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Token ;
struct TYPE_9__ {scalar_t__ mallocFailed; } ;
struct TYPE_8__ {TYPE_1__* pRename; TYPE_5__* db; } ;
struct TYPE_7__ {struct TYPE_7__* pNext; int /*<<< orphan*/  t; void* p; } ;
typedef  TYPE_1__ RenameToken ;
typedef  TYPE_2__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void*) ; 
 TYPE_1__* FUNC2 (TYPE_5__*,int) ; 

void *FUNC3(Parse *pParse, void *pPtr, Token *pToken){
  RenameToken *pNew;
  FUNC0( pPtr || pParse->db->mallocFailed );
  FUNC1(pParse, pPtr);
  pNew = FUNC2(pParse->db, sizeof(RenameToken));
  if( pNew ){
    pNew->p = pPtr;
    pNew->t = *pToken;
    pNew->pNext = pParse->pRename;
    pParse->pRename = pNew;
  }

  return pPtr;
}