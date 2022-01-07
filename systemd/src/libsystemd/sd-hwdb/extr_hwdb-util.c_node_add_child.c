
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct trie_node {int children_count; struct trie_child_entry* children; } ;
struct trie_child_entry {struct trie_node* child; int c; } ;
struct trie {int nodes_count; int children_count; } ;


 int ENOMEM ;
 struct trie_child_entry* reallocarray (struct trie_child_entry*,int,int) ;
 int trie_children_cmp ;
 int typesafe_qsort (struct trie_child_entry*,size_t,int ) ;

__attribute__((used)) static int node_add_child(struct trie *trie, struct trie_node *node, struct trie_node *node_child, uint8_t c) {
        struct trie_child_entry *child;


        child = reallocarray(node->children, node->children_count + 1, sizeof(struct trie_child_entry));
        if (!child)
                return -ENOMEM;

        node->children = child;
        trie->children_count++;
        node->children[node->children_count].c = c;
        node->children[node->children_count].child = node_child;
        node->children_count++;
        typesafe_qsort(node->children, node->children_count, trie_children_cmp);
        trie->nodes_count++;

        return 0;
}
