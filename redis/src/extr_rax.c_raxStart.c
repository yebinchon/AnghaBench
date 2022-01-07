
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stack; int * node_cb; int * data; int key_max; int key_static_string; int key; scalar_t__ key_len; int * rt; int flags; } ;
typedef TYPE_1__ raxIterator ;
typedef int rax ;


 int RAX_ITER_EOF ;
 int RAX_ITER_STATIC_LEN ;
 int raxStackInit (int *) ;

void raxStart(raxIterator *it, rax *rt) {
    it->flags = RAX_ITER_EOF;
    it->rt = rt;
    it->key_len = 0;
    it->key = it->key_static_string;
    it->key_max = RAX_ITER_STATIC_LEN;
    it->data = ((void*)0);
    it->node_cb = ((void*)0);
    raxStackInit(&it->stack);
}
