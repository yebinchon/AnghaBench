
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie_node {size_t children_count; struct trie_node* values; struct trie_node* children; struct trie_node* child; } ;


 int free (struct trie_node*) ;

__attribute__((used)) static void trie_node_cleanup(struct trie_node *node) {
        size_t i;

        if (!node)
                return;

        for (i = 0; i < node->children_count; i++)
                trie_node_cleanup(node->children[i].child);
        free(node->children);
        free(node->values);
        free(node);
}
