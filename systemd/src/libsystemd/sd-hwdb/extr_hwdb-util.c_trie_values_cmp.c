
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trie_value_entry {scalar_t__ key_off; } ;
struct trie {TYPE_1__* strings; } ;
struct TYPE_2__ {scalar_t__ buf; } ;


 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int trie_values_cmp(const struct trie_value_entry *a, const struct trie_value_entry *b, struct trie *trie) {
        return strcmp(trie->strings->buf + a->key_off,
                      trie->strings->buf + b->key_off);
}
