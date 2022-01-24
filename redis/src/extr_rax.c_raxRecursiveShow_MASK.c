#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int size; int /*<<< orphan*/ * data; scalar_t__ iscompr; scalar_t__ iskey; } ;
typedef  TYPE_1__ raxNode ;
typedef  int /*<<< orphan*/  child ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,TYPE_1__**,int) ; 
 int FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__** FUNC4 (TYPE_1__*) ; 

void FUNC5(int level, int lpad, raxNode *n) {
    char s = n->iscompr ? '"' : '[';
    char e = n->iscompr ? '"' : ']';

    int numchars = FUNC1("%c%.*s%c", s, n->size, n->data, e);
    if (n->iskey) {
        numchars += FUNC1("=%p",FUNC3(n));
    }

    int numchildren = n->iscompr ? 1 : n->size;
    /* Note that 7 and 4 magic constants are the string length
     * of " `-(x) " and " -> " respectively. */
    if (level) {
        lpad += (numchildren > 1) ? 7 : 4;
        if (numchildren == 1) lpad += numchars;
    }
    raxNode **cp = FUNC4(n);
    for (int i = 0; i < numchildren; i++) {
        char *branch = " `-(%c) ";
        if (numchildren > 1) {
            FUNC1("\n");
            for (int j = 0; j < lpad; j++) FUNC2(' ');
            FUNC1(branch,n->data[i]);
        } else {
            FUNC1(" -> ");
        }
        raxNode *child;
        FUNC0(&child,cp,sizeof(child));
        FUNC5(level+1,lpad,child);
        cp++;
    }
}