
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {size_t size; int iscompr; scalar_t__ iskey; int data; int isnull; } ;
typedef TYPE_1__ raxNode ;


 int assert (int) ;
 int debugf (char*,int,unsigned char*) ;
 int memcpy (TYPE_1__**,...) ;
 void* raxGetData (TYPE_1__*) ;
 TYPE_1__* raxNewNode (int ,int ) ;
 TYPE_1__** raxNodeLastChildPtr (TYPE_1__*) ;
 int raxPadding (size_t) ;
 int raxSetData (TYPE_1__*,void*) ;
 int rax_free (TYPE_1__*) ;
 TYPE_1__* rax_realloc (TYPE_1__*,size_t) ;

raxNode *raxCompressNode(raxNode *n, unsigned char *s, size_t len, raxNode **child) {
    assert(n->size == 0 && n->iscompr == 0);
    void *data = ((void*)0);
    size_t newsize;

    debugf("Compress node: %.*s\n", (int)len,s);


    *child = raxNewNode(0,0);
    if (*child == ((void*)0)) return ((void*)0);


    newsize = sizeof(raxNode)+len+raxPadding(len)+sizeof(raxNode*);
    if (n->iskey) {
        data = raxGetData(n);
        if (!n->isnull) newsize += sizeof(void*);
    }
    raxNode *newn = rax_realloc(n,newsize);
    if (newn == ((void*)0)) {
        rax_free(*child);
        return ((void*)0);
    }
    n = newn;

    n->iscompr = 1;
    n->size = len;
    memcpy(n->data,s,len);
    if (n->iskey) raxSetData(n,data);
    raxNode **childfield = raxNodeLastChildPtr(n);
    memcpy(childfield,child,sizeof(*child));
    return n;
}
