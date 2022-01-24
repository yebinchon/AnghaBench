#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* zSelf; struct TYPE_7__* zVocabLang; struct TYPE_7__* zVocabWord; struct TYPE_7__* zVocabTab; struct TYPE_7__* zCostTab; struct TYPE_7__* zDb; struct TYPE_7__* zClassName; } ;
typedef  TYPE_1__ amatch_vtab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(amatch_vtab *p){
  if( p ){
    FUNC0(p);
    FUNC1(p);
    FUNC3(p->zClassName);
    FUNC3(p->zDb);
    FUNC3(p->zCostTab);
    FUNC3(p->zVocabTab);
    FUNC3(p->zVocabWord);
    FUNC3(p->zVocabLang);
    FUNC3(p->zSelf);
    FUNC2(p, 0, sizeof(*p));
    FUNC3(p);
  }
}