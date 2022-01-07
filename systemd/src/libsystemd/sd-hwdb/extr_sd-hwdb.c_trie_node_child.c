
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trie_node_f {int dummy; } ;
struct trie_child_entry_f {int dummy; } ;
struct TYPE_5__ {TYPE_1__* head; } ;
typedef TYPE_2__ sd_hwdb ;
struct TYPE_4__ {int child_entry_size; int node_size; } ;


 size_t le64toh (int ) ;

__attribute__((used)) static const struct trie_child_entry_f *trie_node_child(sd_hwdb *hwdb, const struct trie_node_f *node, size_t idx) {
        const char *base = (const char *)node;

        base += le64toh(hwdb->head->node_size);
        base += idx * le64toh(hwdb->head->child_entry_size);
        return (const struct trie_child_entry_f *)base;
}
