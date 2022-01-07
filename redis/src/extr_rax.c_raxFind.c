
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iskey; scalar_t__ iscompr; } ;
typedef TYPE_1__ raxNode ;
typedef int rax ;


 int debugf (char*,int,unsigned char*) ;
 void* raxGetData (TYPE_1__*) ;
 size_t raxLowWalk (int *,unsigned char*,size_t,TYPE_1__**,int *,int*,int *) ;
 void* raxNotFound ;

void *raxFind(rax *rax, unsigned char *s, size_t len) {
    raxNode *h;

    debugf("### Lookup: %.*s\n", (int)len, s);
    int splitpos = 0;
    size_t i = raxLowWalk(rax,s,len,&h,((void*)0),&splitpos,((void*)0));
    if (i != len || (h->iscompr && splitpos != 0) || !h->iskey)
        return raxNotFound;
    return raxGetData(h);
}
