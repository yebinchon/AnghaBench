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
typedef  int /*<<< orphan*/  ngx_trie_node_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 

ngx_trie_node_t *
FUNC1(ngx_pool_t *pool)
{
    ngx_trie_node_t *node;

    node = FUNC0(pool, sizeof(ngx_trie_node_t));
    if (node == NULL) {
        return NULL;
    }

    return node;
}