
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int size; unsigned char* data; scalar_t__ iskey; scalar_t__ iscompr; } ;
typedef TYPE_2__ raxNode ;
struct TYPE_21__ {size_t items; } ;
struct TYPE_20__ {int flags; size_t key_len; unsigned char* key; TYPE_2__* node; void* data; scalar_t__ (* node_cb ) (TYPE_2__**) ;TYPE_6__ stack; TYPE_1__* rt; } ;
typedef TYPE_3__ raxIterator ;
struct TYPE_18__ {TYPE_2__* head; } ;


 int RAX_ITER_EOF ;
 int RAX_ITER_JUST_SEEKED ;
 int debugf (char*,...) ;
 int memcpy (TYPE_2__**,TYPE_2__**,int) ;
 void* raxGetData (TYPE_2__*) ;
 int raxIteratorAddChars (TYPE_3__*,unsigned char*,int) ;
 int raxIteratorDelChars (TYPE_3__*,int) ;
 TYPE_2__** raxNodeFirstChildPtr (TYPE_2__*) ;
 TYPE_2__* raxStackPop (TYPE_6__*) ;
 int raxStackPush (TYPE_6__*,TYPE_2__*) ;
 scalar_t__ stub1 (TYPE_2__**) ;
 scalar_t__ stub2 (TYPE_2__**) ;

int raxIteratorNextStep(raxIterator *it, int noup) {
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
        int children = it->node->iscompr ? 1 : it->node->size;
        if (!noup && children) {
            debugf("GO DEEPER\n");



            if (!raxStackPush(&it->stack,it->node)) return 0;
            raxNode **cp = raxNodeFirstChildPtr(it->node);
            if (!raxIteratorAddChars(it,it->node->data,
                it->node->iscompr ? it->node->size : 1)) return 0;
            memcpy(&it->node,cp,sizeof(it->node));


            if (it->node_cb && it->node_cb(&it->node))
                memcpy(cp,&it->node,sizeof(it->node));



            if (it->node->iskey) {
                it->data = raxGetData(it->node);
                return 1;
            }
        } else {




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
                    raxNode **cp = raxNodeFirstChildPtr(it->node);
                    int i = 0;
                    while (i < it->node->size) {
                        debugf("SCAN NEXT %c\n", it->node->data[i]);
                        if (it->node->data[i] > prevchild) break;
                        i++;
                        cp++;
                    }
                    if (i != it->node->size) {
                        debugf("SCAN found a new node\n");
                        raxIteratorAddChars(it,it->node->data+i,1);
                        if (!raxStackPush(&it->stack,it->node)) return 0;
                        memcpy(&it->node,cp,sizeof(it->node));


                        if (it->node_cb && it->node_cb(&it->node))
                            memcpy(cp,&it->node,sizeof(it->node));
                        if (it->node->iskey) {
                            it->data = raxGetData(it->node);
                            return 1;
                        }
                        break;
                    }
                }
            }
        }
    }
}
