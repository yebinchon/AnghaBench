
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int size; unsigned char* data; scalar_t__ iskey; scalar_t__ iscompr; } ;
typedef TYPE_2__ raxNode ;
struct TYPE_20__ {size_t items; } ;
struct TYPE_19__ {int flags; size_t key_len; unsigned char* key; TYPE_2__* node; int data; TYPE_4__ stack; TYPE_1__* rt; } ;
typedef TYPE_3__ raxIterator ;
struct TYPE_17__ {TYPE_2__* head; } ;


 int RAX_ITER_EOF ;
 int RAX_ITER_JUST_SEEKED ;
 int debugf (char*,...) ;
 int memcpy (TYPE_2__**,TYPE_2__**,int) ;
 int raxGetData (TYPE_2__*) ;
 int raxIteratorAddChars (TYPE_3__*,unsigned char*,int) ;
 int raxIteratorDelChars (TYPE_3__*,int) ;
 TYPE_2__** raxNodeLastChildPtr (TYPE_2__*) ;
 int raxSeekGreatest (TYPE_3__*) ;
 TYPE_2__* raxStackPop (TYPE_4__*) ;
 int raxStackPush (TYPE_4__*,TYPE_2__*) ;

int raxIteratorPrevStep(raxIterator *it, int noup) {
    if (it->flags & RAX_ITER_EOF) {
        return 1;
    } else if (it->flags & RAX_ITER_JUST_SEEKED) {
        it->flags &= ~RAX_ITER_JUST_SEEKED;
        return 1;
    }



    size_t orig_key_len = it->key_len;
    size_t orig_stack_items = it->stack.items;
    raxNode *orig_node = it->node;

    while(1) {
        int old_noup = noup;


        if (!noup && it->node == it->rt->head) {
            it->flags |= RAX_ITER_EOF;
            it->stack.items = orig_stack_items;
            it->key_len = orig_key_len;
            it->node = orig_node;
            return 1;
        }

        unsigned char prevchild = it->key[it->key_len-1];
        if (!noup) {
            it->node = raxStackPop(&it->stack);
        } else {
            noup = 0;
        }



        int todel = it->node->iscompr ? it->node->size : 1;
        raxIteratorDelChars(it,todel);



        if (!it->node->iscompr && it->node->size > (old_noup ? 0 : 1)) {
            raxNode **cp = raxNodeLastChildPtr(it->node);
            int i = it->node->size-1;
            while (i >= 0) {
                debugf("SCAN PREV %c\n", it->node->data[i]);
                if (it->node->data[i] < prevchild) break;
                i--;
                cp--;
            }



            if (i != -1) {
                debugf("SCAN found a new node\n");

                if (!raxIteratorAddChars(it,it->node->data+i,1)) return 0;
                if (!raxStackPush(&it->stack,it->node)) return 0;
                memcpy(&it->node,cp,sizeof(it->node));

                if (!raxSeekGreatest(it)) return 0;
            }
        }




        if (it->node->iskey) {
            it->data = raxGetData(it->node);
            return 1;
        }
    }
}
