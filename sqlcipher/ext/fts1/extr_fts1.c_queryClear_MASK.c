#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* pTerm; } ;
struct TYPE_5__ {int nTerms; TYPE_4__* pTerms; } ;
typedef  TYPE_1__ Query ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(Query *q){
  int i;
  for(i = 0; i < q->nTerms; ++i){
    FUNC0(q->pTerms[i].pTerm);
  }
  FUNC0(q->pTerms);
  FUNC1(q, 0, sizeof(*q));
}