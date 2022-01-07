
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int raxStack ;
struct TYPE_12__ {size_t size; unsigned char* data; scalar_t__ iscompr; } ;
typedef TYPE_1__ raxNode ;
struct TYPE_13__ {TYPE_1__* head; } ;
typedef TYPE_2__ rax ;
typedef int h ;


 int debugnode (char*,TYPE_1__*) ;
 int memcpy (TYPE_1__**,TYPE_1__**,int) ;
 TYPE_1__** raxNodeFirstChildPtr (TYPE_1__*) ;
 int raxStackPush (int *,TYPE_1__*) ;

__attribute__((used)) static inline size_t raxLowWalk(rax *rax, unsigned char *s, size_t len, raxNode **stopnode, raxNode ***plink, int *splitpos, raxStack *ts) {
    raxNode *h = rax->head;
    raxNode **parentlink = &rax->head;

    size_t i = 0;
    size_t j = 0;
    while(h->size && i < len) {
        debugnode("Lookup current node",h);
        unsigned char *v = h->data;

        if (h->iscompr) {
            for (j = 0; j < h->size && i < len; j++, i++) {
                if (v[j] != s[i]) break;
            }
            if (j != h->size) break;
        } else {



            for (j = 0; j < h->size; j++) {
                if (v[j] == s[i]) break;
            }
            if (j == h->size) break;
            i++;
        }

        if (ts) raxStackPush(ts,h);
        raxNode **children = raxNodeFirstChildPtr(h);
        if (h->iscompr) j = 0;
        memcpy(&h,children+j,sizeof(h));
        parentlink = children+j;
        j = 0;



    }
    debugnode("Lookup stop node is",h);
    if (stopnode) *stopnode = h;
    if (plink) *plink = parentlink;
    if (splitpos && h->iscompr) *splitpos = j;
    return i;
}
