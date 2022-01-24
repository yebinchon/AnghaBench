#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int size; int /*<<< orphan*/  isnull; scalar_t__ iskey; scalar_t__ iscompr; } ;
typedef  TYPE_1__ raxNode ;
struct TYPE_13__ {int /*<<< orphan*/  numnodes; } ;
typedef  TYPE_2__ rax ;
typedef  int /*<<< orphan*/  child ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,TYPE_1__**,int) ; 
 void* FUNC2 (TYPE_1__*) ; 
 TYPE_1__** FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(rax *rax, raxNode *n, void (*free_callback)(void*)) {
    FUNC0("free traversing",n);
    int numchildren = n->iscompr ? 1 : n->size;
    raxNode **cp = FUNC3(n);
    while(numchildren--) {
        raxNode *child;
        FUNC1(&child,cp,sizeof(child));
        FUNC5(rax,child,free_callback);
        cp--;
    }
    FUNC0("free depth-first",n);
    if (free_callback && n->iskey && !n->isnull)
        free_callback(FUNC2(n));
    FUNC4(n);
    rax->numnodes--;
}