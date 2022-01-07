
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct trie_value_entry_f {int dummy; } ;
struct trie_value_entry2_f {int dummy; } ;
struct trie_node_f {int dummy; } ;
struct trie_node {size_t children_count; size_t values_count; TYPE_1__* children; } ;
struct trie_f {int strings_off; } ;
struct trie_child_entry_f {int dummy; } ;
struct TYPE_2__ {struct trie_node* child; } ;



__attribute__((used)) static void trie_store_nodes_size(struct trie_f *trie, struct trie_node *node, bool compat) {
        uint64_t i;

        for (i = 0; i < node->children_count; i++)
                trie_store_nodes_size(trie, node->children[i].child, compat);

        trie->strings_off += sizeof(struct trie_node_f);
        for (i = 0; i < node->children_count; i++)
                trie->strings_off += sizeof(struct trie_child_entry_f);
        for (i = 0; i < node->values_count; i++)
                trie->strings_off += compat ? sizeof(struct trie_value_entry_f) : sizeof(struct trie_value_entry2_f);
}
