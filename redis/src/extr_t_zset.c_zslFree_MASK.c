#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* level; } ;
typedef  TYPE_3__ zskiplistNode ;
struct TYPE_11__ {struct TYPE_11__* header; TYPE_1__* level; } ;
typedef  TYPE_4__ zskiplist ;
struct TYPE_9__ {TYPE_3__* forward; } ;
struct TYPE_8__ {TYPE_3__* forward; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

void FUNC2(zskiplist *zsl) {
    zskiplistNode *node = zsl->header->level[0].forward, *next;

    FUNC0(zsl->header);
    while(node) {
        next = node->level[0].forward;
        FUNC1(node);
        node = next;
    }
    FUNC0(zsl);
}