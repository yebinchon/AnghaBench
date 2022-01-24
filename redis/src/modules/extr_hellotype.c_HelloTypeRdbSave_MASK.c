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
struct HelloTypeObject {int /*<<< orphan*/  len; struct HelloTypeNode* head; } ;
struct HelloTypeNode {struct HelloTypeNode* next; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  RedisModuleIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(RedisModuleIO *rdb, void *value) {
    struct HelloTypeObject *hto = value;
    struct HelloTypeNode *node = hto->head;
    FUNC1(rdb,hto->len);
    while(node) {
        FUNC0(rdb,node->value);
        node = node->next;
    }
}