#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nTerms; int /*<<< orphan*/  dfltColumn; int /*<<< orphan*/  nextColumn; scalar_t__ nextIsOr; TYPE_1__* pTerms; } ;
struct TYPE_7__ {int nTerm; int /*<<< orphan*/  iColumn; scalar_t__ isPrefix; scalar_t__ isOr; scalar_t__* pTerm; } ;
typedef  TYPE_1__ QueryTerm ;
typedef  TYPE_2__ Query ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char const*,int) ; 
 scalar_t__* FUNC2 (int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC4(Query *q, const char *pTerm, int nTerm){
  QueryTerm *t;
  ++q->nTerms;
  q->pTerms = FUNC3(q->pTerms, q->nTerms * sizeof(q->pTerms[0]));
  if( q->pTerms==0 ){
    q->nTerms = 0;
    return;
  }
  t = &q->pTerms[q->nTerms - 1];
  FUNC0(t);
  t->pTerm = FUNC2(nTerm+1);
  FUNC1(t->pTerm, pTerm, nTerm);
  t->pTerm[nTerm] = 0;
  t->nTerm = nTerm;
  t->isOr = q->nextIsOr;
  t->isPrefix = 0;
  q->nextIsOr = 0;
  t->iColumn = q->nextColumn;
  q->nextColumn = q->dfltColumn;
}