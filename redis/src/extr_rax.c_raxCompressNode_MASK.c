#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t size; int iscompr; scalar_t__ iskey; int /*<<< orphan*/  data; int /*<<< orphan*/  isnull; } ;
typedef  TYPE_1__ raxNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,...) ; 
 void* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC5 (TYPE_1__*) ; 
 int FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,size_t) ; 

raxNode *FUNC10(raxNode *n, unsigned char *s, size_t len, raxNode **child) {
    FUNC0(n->size == 0 && n->iscompr == 0);
    void *data = NULL; /* Initialized only to avoid warnings. */
    size_t newsize;

    FUNC1("Compress node: %.*s\n", (int)len,s);

    /* Allocate the child to link to this node. */
    *child = FUNC4(0,0);
    if (*child == NULL) return NULL;

    /* Make space in the parent node. */
    newsize = sizeof(raxNode)+len+FUNC6(len)+sizeof(raxNode*);
    if (n->iskey) {
        data = FUNC3(n); /* To restore it later. */
        if (!n->isnull) newsize += sizeof(void*);
    }
    raxNode *newn = FUNC9(n,newsize);
    if (newn == NULL) {
        FUNC8(*child);
        return NULL;
    }
    n = newn;

    n->iscompr = 1;
    n->size = len;
    FUNC2(n->data,s,len);
    if (n->iskey) FUNC7(n,data);
    raxNode **childfield = FUNC5(n);
    FUNC2(childfield,child,sizeof(*child));
    return n;
}