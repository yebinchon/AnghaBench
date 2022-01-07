
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_20__ {unsigned char* data; int size; scalar_t__ iscompr; } ;
typedef TYPE_1__ raxNode ;
struct TYPE_22__ {size_t items; TYPE_1__** stack; scalar_t__ oom; } ;
struct TYPE_21__ {int flags; TYPE_4__* node; scalar_t__ key; scalar_t__ key_len; void* data; TYPE_3__ stack; TYPE_10__* rt; } ;
typedef TYPE_2__ raxIterator ;
typedef int aux ;
struct TYPE_23__ {int* data; int size; scalar_t__ iskey; scalar_t__ iscompr; } ;
struct TYPE_19__ {scalar_t__ numele; TYPE_4__* head; } ;


 int RAX_ITER_EOF ;
 int RAX_ITER_JUST_SEEKED ;
 int assert (scalar_t__) ;
 int debugf (char*,int,...) ;
 scalar_t__ errno ;
 int memcpy (TYPE_1__**,TYPE_1__**,int) ;
 void* raxGetData (TYPE_4__*) ;
 int raxIteratorAddChars (TYPE_2__*,unsigned char*,int) ;
 int raxIteratorNextStep (TYPE_2__*,int) ;
 int raxIteratorPrevStep (TYPE_2__*,int) ;
 size_t raxLowWalk (TYPE_10__*,unsigned char*,size_t,TYPE_4__**,int *,int*,TYPE_3__*) ;
 TYPE_1__** raxNodeFirstChildPtr (TYPE_1__*) ;
 int raxSeekGreatest (TYPE_2__*) ;
 int raxStackPop (TYPE_3__*) ;
 int raxStackPush (TYPE_3__*,TYPE_4__*) ;

int raxSeek(raxIterator *it, const char *op, unsigned char *ele, size_t len) {
    int eq = 0, lt = 0, gt = 0, first = 0, last = 0;

    it->stack.items = 0;
    it->flags |= RAX_ITER_JUST_SEEKED;
    it->flags &= ~RAX_ITER_EOF;
    it->key_len = 0;
    it->node = ((void*)0);


    if (op[0] == '>') {
        gt = 1;
        if (op[1] == '=') eq = 1;
    } else if (op[0] == '<') {
        lt = 1;
        if (op[1] == '=') eq = 1;
    } else if (op[0] == '=') {
        eq = 1;
    } else if (op[0] == '^') {
        first = 1;
    } else if (op[0] == '$') {
        last = 1;
    } else {
        errno = 0;
        return 0;
    }



    if (it->rt->numele == 0) {
        it->flags |= RAX_ITER_EOF;
        return 1;
    }

    if (first) {


        return raxSeek(it,">=",((void*)0),0);
    }

    if (last) {


        it->node = it->rt->head;
        if (!raxSeekGreatest(it)) return 0;
        assert(it->node->iskey);
        it->data = raxGetData(it->node);
        return 1;
    }




    int splitpos = 0;
    size_t i = raxLowWalk(it->rt,ele,len,&it->node,((void*)0),&splitpos,&it->stack);


    if (it->stack.oom) return 0;

    if (eq && i == len && (!it->node->iscompr || splitpos == 0) &&
        it->node->iskey)
    {


        if (!raxIteratorAddChars(it,ele,len)) return 0;
        it->data = raxGetData(it->node);
    } else if (lt || gt) {





        if (!raxStackPush(&it->stack,it->node)) return 0;
        for (size_t j = 1; j < it->stack.items; j++) {
            raxNode *parent = it->stack.stack[j-1];
            raxNode *child = it->stack.stack[j];
            if (parent->iscompr) {
                if (!raxIteratorAddChars(it,parent->data,parent->size))
                    return 0;
            } else {
                raxNode **cp = raxNodeFirstChildPtr(parent);
                unsigned char *p = parent->data;
                while(1) {
                    raxNode *aux;
                    memcpy(&aux,cp,sizeof(aux));
                    if (aux == child) break;
                    cp++;
                    p++;
                }
                if (!raxIteratorAddChars(it,p,1)) return 0;
            }
        }
        raxStackPop(&it->stack);



        debugf("After initial seek: i=%d len=%d key=%.*s\n",
            (int)i, (int)len, (int)it->key_len, it->key);
        if (i != len && !it->node->iscompr) {





            if (!raxIteratorAddChars(it,ele+i,1)) return 0;
            debugf("Seek normal node on mismatch: %.*s\n",
                (int)it->key_len, (char*)it->key);

            it->flags &= ~RAX_ITER_JUST_SEEKED;
            if (lt && !raxIteratorPrevStep(it,1)) return 0;
            if (gt && !raxIteratorNextStep(it,1)) return 0;
            it->flags |= RAX_ITER_JUST_SEEKED;
        } else if (i != len && it->node->iscompr) {
            debugf("Compressed mismatch: %.*s\n",
                (int)it->key_len, (char*)it->key);

            int nodechar = it->node->data[splitpos];
            int keychar = ele[i];
            it->flags &= ~RAX_ITER_JUST_SEEKED;
            if (gt) {



                if (nodechar > keychar) {
                    if (!raxIteratorNextStep(it,0)) return 0;
                } else {
                    if (!raxIteratorAddChars(it,it->node->data,it->node->size))
                        return 0;
                    if (!raxIteratorNextStep(it,1)) return 0;
                }
            }
            if (lt) {




                if (nodechar < keychar) {
                    if (!raxSeekGreatest(it)) return 0;
                    it->data = raxGetData(it->node);
                } else {
                    if (!raxIteratorAddChars(it,it->node->data,it->node->size))
                        return 0;
                    if (!raxIteratorPrevStep(it,1)) return 0;
                }
            }
            it->flags |= RAX_ITER_JUST_SEEKED;
        } else {
            debugf("No mismatch: %.*s\n",
                (int)it->key_len, (char*)it->key);





            it->flags &= ~RAX_ITER_JUST_SEEKED;
            if (it->node->iscompr && it->node->iskey && splitpos && lt) {
            } else {
                if (gt && !raxIteratorNextStep(it,0)) return 0;
                if (lt && !raxIteratorPrevStep(it,0)) return 0;
            }
            it->flags |= RAX_ITER_JUST_SEEKED;
        }
    } else {

        it->flags |= RAX_ITER_EOF;
        return 1;
    }
    return 1;
}
