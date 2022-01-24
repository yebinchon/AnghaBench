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
struct TYPE_3__ {struct TYPE_3__* aFold; struct TYPE_3__* aiException; } ;
typedef  TYPE_1__ Unicode61Tokenizer ;
typedef  int /*<<< orphan*/  Fts5Tokenizer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(Fts5Tokenizer *pTok){
  if( pTok ){
    Unicode61Tokenizer *p = (Unicode61Tokenizer*)pTok;
    FUNC0(p->aiException);
    FUNC0(p->aFold);
    FUNC0(p);
  }
  return;
}