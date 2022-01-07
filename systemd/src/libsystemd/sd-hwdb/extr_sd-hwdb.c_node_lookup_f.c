
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct trie_node_f {int children_count; } ;
struct trie_child_entry_f {int child_off; int c; } ;
struct TYPE_6__ {TYPE_1__* head; } ;
typedef TYPE_2__ sd_hwdb ;
struct TYPE_5__ {int child_entry_size; int node_size; } ;


 struct trie_child_entry_f* bsearch (struct trie_child_entry_f*,char const*,int ,int,int ) ;
 int le64toh (int ) ;
 int trie_children_cmp_f ;
 struct trie_node_f const* trie_node_from_off (TYPE_2__*,int ) ;

__attribute__((used)) static const struct trie_node_f *node_lookup_f(sd_hwdb *hwdb, const struct trie_node_f *node, uint8_t c) {
        struct trie_child_entry_f *child;
        struct trie_child_entry_f search;

        search.c = c;
        child = bsearch(&search, (const char *)node + le64toh(hwdb->head->node_size), node->children_count,
                        le64toh(hwdb->head->child_entry_size), trie_children_cmp_f);
        if (child)
                return trie_node_from_off(hwdb, child->child_off);
        return ((void*)0);
}
