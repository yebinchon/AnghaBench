#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t size; scalar_t__ iscompr; scalar_t__ isnull; scalar_t__ iskey; } ;
typedef  TYPE_1__ raxNode ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 TYPE_1__* FUNC1 (size_t) ; 

raxNode *FUNC2(size_t children, int datafield) {
    size_t nodesize = sizeof(raxNode)+children+FUNC0(children)+
                      sizeof(raxNode*)*children;
    if (datafield) nodesize += sizeof(void*);
    raxNode *node = FUNC1(nodesize);
    if (node == NULL) return NULL;
    node->iskey = 0;
    node->isnull = 0;
    node->iscompr = 0;
    node->size = children;
    return node;
}