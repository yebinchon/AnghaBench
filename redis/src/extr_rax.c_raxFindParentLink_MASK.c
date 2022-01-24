#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  raxNode ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *) ; 

raxNode **FUNC2(raxNode *parent, raxNode *child) {
    raxNode **cp = FUNC1(parent);
    raxNode *c;
    while(1) {
        FUNC0(&c,cp,sizeof(c));
        if (c == child) break;
        cp++;
    }
    return cp;
}