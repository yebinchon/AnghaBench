
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int raxNode ;
struct TYPE_7__ {TYPE_2__* node; int stack; } ;
typedef TYPE_1__ raxIterator ;
struct TYPE_8__ {int size; int data; scalar_t__ iscompr; } ;


 int memcpy (TYPE_2__**,int **,int) ;
 int raxIteratorAddChars (TYPE_1__*,int,int) ;
 int ** raxNodeLastChildPtr (TYPE_2__*) ;
 int raxStackPush (int *,TYPE_2__*) ;

int raxSeekGreatest(raxIterator *it) {
    while(it->node->size) {
        if (it->node->iscompr) {
            if (!raxIteratorAddChars(it,it->node->data,
                it->node->size)) return 0;
        } else {
            if (!raxIteratorAddChars(it,it->node->data+it->node->size-1,1))
                return 0;
        }
        raxNode **cp = raxNodeLastChildPtr(it->node);
        if (!raxStackPush(&it->stack,it->node)) return 0;
        memcpy(&it->node,cp,sizeof(it->node));
    }
    return 1;
}
