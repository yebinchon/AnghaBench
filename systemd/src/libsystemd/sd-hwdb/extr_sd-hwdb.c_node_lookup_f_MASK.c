#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct trie_node_f {int /*<<< orphan*/  children_count; } ;
struct trie_child_entry_f {int /*<<< orphan*/  child_off; int /*<<< orphan*/  c; } ;
struct TYPE_6__ {TYPE_1__* head; } ;
typedef  TYPE_2__ sd_hwdb ;
struct TYPE_5__ {int /*<<< orphan*/  child_entry_size; int /*<<< orphan*/  node_size; } ;

/* Variables and functions */
 struct trie_child_entry_f* FUNC0 (struct trie_child_entry_f*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trie_children_cmp_f ; 
 struct trie_node_f const* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct trie_node_f *FUNC3(sd_hwdb *hwdb, const struct trie_node_f *node, uint8_t c) {
        struct trie_child_entry_f *child;
        struct trie_child_entry_f search;

        search.c = c;
        child = FUNC0(&search, (const char *)node + FUNC1(hwdb->head->node_size), node->children_count,
                        FUNC1(hwdb->head->child_entry_size), trie_children_cmp_f);
        if (child)
                return FUNC2(hwdb, child->child_off);
        return NULL;
}