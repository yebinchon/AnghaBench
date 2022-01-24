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
struct HelloTypeObject {struct HelloTypeObject* next; struct HelloTypeObject* head; } ;
struct HelloTypeNode {struct HelloTypeNode* next; struct HelloTypeNode* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct HelloTypeObject*) ; 

void FUNC1(struct HelloTypeObject *o) {
    struct HelloTypeNode *cur, *next;
    cur = o->head;
    while(cur) {
        next = cur->next;
        FUNC0(cur);
        cur = next;
    }
    FUNC0(o);
}