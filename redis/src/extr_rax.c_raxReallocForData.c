
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int raxNode ;


 size_t raxNodeCurrentLength (int *) ;
 int * rax_realloc (int *,int) ;

raxNode *raxReallocForData(raxNode *n, void *data) {
    if (data == ((void*)0)) return n;
    size_t curlen = raxNodeCurrentLength(n);
    return rax_realloc(n,curlen+sizeof(void*));
}
