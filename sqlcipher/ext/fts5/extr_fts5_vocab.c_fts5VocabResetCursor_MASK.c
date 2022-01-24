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
struct TYPE_3__ {int nLeTerm; scalar_t__ bEof; scalar_t__ zLeTerm; scalar_t__ pIter; scalar_t__ rowid; } ;
typedef  TYPE_1__ Fts5VocabCursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(Fts5VocabCursor *pCsr){
  pCsr->rowid = 0;
  FUNC0(pCsr->pIter);
  pCsr->pIter = 0;
  FUNC1(pCsr->zLeTerm);
  pCsr->nLeTerm = -1;
  pCsr->zLeTerm = 0;
  pCsr->bEof = 0;
}