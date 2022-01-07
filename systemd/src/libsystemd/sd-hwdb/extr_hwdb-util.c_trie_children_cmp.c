
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie_child_entry {int c; } ;


 int CMP (int ,int ) ;

__attribute__((used)) static int trie_children_cmp(const struct trie_child_entry *a, const struct trie_child_entry *b) {
        return CMP(a->c, b->c);
}
