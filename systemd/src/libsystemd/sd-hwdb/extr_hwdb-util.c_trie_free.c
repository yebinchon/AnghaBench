
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int strings; int root; } ;


 int free (struct trie*) ;
 int strbuf_cleanup (int ) ;
 int trie_node_cleanup (int ) ;

__attribute__((used)) static void trie_free(struct trie *trie) {
        if (!trie)
                return;

        trie_node_cleanup(trie->root);
        strbuf_cleanup(trie->strings);
        free(trie);
}
