
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* root; } ;
typedef TYPE_1__ ngx_trie_t ;
struct TYPE_5__ {struct TYPE_5__** next; struct TYPE_5__* search_clue; } ;
typedef TYPE_2__ ngx_trie_node_t ;
typedef int ngx_int_t ;


 int NGX_OK ;
 int NGX_TRIE_KIND ;
 int NGX_TRIE_MAX_QUEUE_SIZE ;

ngx_int_t
ngx_trie_build_clue(ngx_trie_t *trie)
{
    ngx_int_t i, head, tail;
    ngx_trie_node_t *q[NGX_TRIE_MAX_QUEUE_SIZE], *p, *t, *root;

    head = tail = 0;
    root = trie->root;
    q[head++] = root;
    root->search_clue = ((void*)0);

    while (head != tail) {
        t = q[tail++];
        tail %= NGX_TRIE_MAX_QUEUE_SIZE;

        if (t->next == ((void*)0)) {
            continue;
        }

        p = ((void*)0);

        for (i = 0; i< NGX_TRIE_KIND; i++) {
            if (t->next[i] == ((void*)0)) {
                continue;
            }

            if (t == root) {
                t->next[i]->search_clue = root;

                q[head++] = t->next[i];
                head %= NGX_TRIE_MAX_QUEUE_SIZE;

                continue;
            }

            p = t->search_clue;

            while (p != ((void*)0)) {
                if (p->next !=((void*)0) && p->next[i] != ((void*)0)) {
                    t->next[i]->search_clue = p->next[i];
                    break;
                }
                p = p->search_clue;
            }

            if (p == ((void*)0)) {
                t->next[i]->search_clue = root;
            }

            q[head++] = t->next[i];
            head %= NGX_TRIE_MAX_QUEUE_SIZE;
        }
    }

    return NGX_OK;
}
