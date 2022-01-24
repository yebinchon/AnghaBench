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
struct TYPE_5__ {struct TYPE_5__* pNext; } ;
typedef  TYPE_1__ amatch_word ;
struct TYPE_6__ {int rLimit; scalar_t__ nWord; scalar_t__ iLang; scalar_t__ pCurrent; int /*<<< orphan*/  pWord; scalar_t__ pCost; scalar_t__ nBuf; TYPE_1__* zBuf; TYPE_1__* zInput; TYPE_1__* pAllWords; } ;
typedef  TYPE_2__ amatch_cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(amatch_cursor *pCur){
  amatch_word *pWord, *pNextWord;
  for(pWord=pCur->pAllWords; pWord; pWord=pNextWord){
    pNextWord = pWord->pNext;
    FUNC0(pWord);
  }
  pCur->pAllWords = 0;
  FUNC0(pCur->zInput);
  pCur->zInput = 0;
  FUNC0(pCur->zBuf);
  pCur->zBuf = 0;
  pCur->nBuf = 0;
  pCur->pCost = 0;
  pCur->pWord = 0;
  pCur->pCurrent = 0;
  pCur->rLimit = 1000000;
  pCur->iLang = 0;
  pCur->nWord = 0;
}