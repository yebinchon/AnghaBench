
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct trie_node {int children_count; int children; } ;
struct trie_child_entry {struct trie_node* child; int c; } ;


 int trie_children_cmp ;
 struct trie_child_entry* typesafe_bsearch (struct trie_child_entry*,int ,int ,int ) ;

__attribute__((used)) static struct trie_node *node_lookup(const struct trie_node *node, uint8_t c) {
        struct trie_child_entry *child;
        struct trie_child_entry search;

        search.c = c;
        child = typesafe_bsearch(&search, node->children, node->children_count, trie_children_cmp);
        if (child)
                return child->child;
        return ((void*)0);
}
