
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int trimmed ;
typedef int splitnode ;
struct TYPE_26__ {int iscompr; int iskey; int isnull; int size; struct TYPE_26__** data; } ;
typedef TYPE_1__ raxNode ;
struct TYPE_27__ {int numele; int numnodes; } ;
typedef TYPE_2__ rax ;
typedef int postfix ;
typedef int next ;
typedef int h ;


 scalar_t__ ENOMEM ;
 size_t RAX_NODE_MAX_SIZE ;
 int assert (int) ;
 int debugf (char*,...) ;
 scalar_t__ errno ;
 int memcpy (TYPE_1__**,TYPE_1__**,int) ;
 TYPE_1__* raxAddChild (TYPE_1__*,unsigned char,TYPE_1__**,TYPE_1__***) ;
 TYPE_1__* raxCompressNode (TYPE_1__*,unsigned char*,size_t,TYPE_1__**) ;
 void* raxGetData (TYPE_1__*) ;
 size_t raxLowWalk (TYPE_2__*,unsigned char*,size_t,TYPE_1__**,TYPE_1__***,int*,int *) ;
 TYPE_1__* raxNewNode (int,int) ;
 TYPE_1__** raxNodeLastChildPtr (TYPE_1__*) ;
 int raxPadding (int) ;
 TYPE_1__* raxReallocForData (TYPE_1__*,void*) ;
 scalar_t__ raxRemove (TYPE_2__*,unsigned char*,size_t,int *) ;
 int raxSetData (TYPE_1__*,void*) ;
 int rax_free (TYPE_1__*) ;
 TYPE_1__* rax_malloc (size_t) ;

int raxGenericInsert(rax *rax, unsigned char *s, size_t len, void *data, void **old, int overwrite) {
    size_t i;
    int j = 0;



    raxNode *h, **parentlink;

    debugf("### Insert %.*s with value %p\n", (int)len, s, data);
    i = raxLowWalk(rax,s,len,&h,&parentlink,&j,((void*)0));






    if (i == len && (!h->iscompr || j == 0 )) {
        debugf("### Insert: node representing key exists\n");

        if (!h->iskey || (h->isnull && overwrite)) {
            h = raxReallocForData(h,data);
            if (h) memcpy(parentlink,&h,sizeof(h));
        }
        if (h == ((void*)0)) {
            errno = ENOMEM;
            return 0;
        }


        if (h->iskey) {
            if (old) *old = raxGetData(h);
            if (overwrite) raxSetData(h,data);
            errno = 0;
            return 0;
        }



        raxSetData(h,data);
        rax->numele++;
        return 1;
    }
    if (h->iscompr && i != len) {
        debugf("ALGO 1: Stopped at compressed node %.*s (%p)\n",
            h->size, h->data, (void*)h);
        debugf("Still to insert: %.*s\n", (int)(len-i), s+i);
        debugf("Splitting at %d: '%c'\n", j, ((char*)h->data)[j]);
        debugf("Other (key) letter is '%c'\n", s[i]);


        raxNode **childfield = raxNodeLastChildPtr(h);
        raxNode *next;
        memcpy(&next,childfield,sizeof(next));
        debugf("Next is %p\n", (void*)next);
        debugf("iskey %d\n", h->iskey);
        if (h->iskey) {
            debugf("key value is %p\n", raxGetData(h));
        }


        size_t trimmedlen = j;
        size_t postfixlen = h->size - j - 1;
        int split_node_is_key = !trimmedlen && h->iskey && !h->isnull;
        size_t nodesize;



        raxNode *splitnode = raxNewNode(1, split_node_is_key);
        raxNode *trimmed = ((void*)0);
        raxNode *postfix = ((void*)0);

        if (trimmedlen) {
            nodesize = sizeof(raxNode)+trimmedlen+raxPadding(trimmedlen)+
                       sizeof(raxNode*);
            if (h->iskey && !h->isnull) nodesize += sizeof(void*);
            trimmed = rax_malloc(nodesize);
        }

        if (postfixlen) {
            nodesize = sizeof(raxNode)+postfixlen+raxPadding(postfixlen)+
                       sizeof(raxNode*);
            postfix = rax_malloc(nodesize);
        }


        if (splitnode == ((void*)0) ||
            (trimmedlen && trimmed == ((void*)0)) ||
            (postfixlen && postfix == ((void*)0)))
        {
            rax_free(splitnode);
            rax_free(trimmed);
            rax_free(postfix);
            errno = ENOMEM;
            return 0;
        }
        splitnode->data[0] = h->data[j];

        if (j == 0) {

            if (h->iskey) {
                void *ndata = raxGetData(h);
                raxSetData(splitnode,ndata);
            }
            memcpy(parentlink,&splitnode,sizeof(splitnode));
        } else {

            trimmed->size = j;
            memcpy(trimmed->data,h->data,j);
            trimmed->iscompr = j > 1 ? 1 : 0;
            trimmed->iskey = h->iskey;
            trimmed->isnull = h->isnull;
            if (h->iskey && !h->isnull) {
                void *ndata = raxGetData(h);
                raxSetData(trimmed,ndata);
            }
            raxNode **cp = raxNodeLastChildPtr(trimmed);
            memcpy(cp,&splitnode,sizeof(splitnode));
            memcpy(parentlink,&trimmed,sizeof(trimmed));
            parentlink = cp;
            rax->numnodes++;
        }



        if (postfixlen) {

            postfix->iskey = 0;
            postfix->isnull = 0;
            postfix->size = postfixlen;
            postfix->iscompr = postfixlen > 1;
            memcpy(postfix->data,h->data+j+1,postfixlen);
            raxNode **cp = raxNodeLastChildPtr(postfix);
            memcpy(cp,&next,sizeof(next));
            rax->numnodes++;
        } else {

            postfix = next;
        }


        raxNode **splitchild = raxNodeLastChildPtr(splitnode);
        memcpy(splitchild,&postfix,sizeof(postfix));




        rax_free(h);
        h = splitnode;
    } else if (h->iscompr && i == len) {

        debugf("ALGO 2: Stopped at compressed node %.*s (%p) j = %d\n",
            h->size, h->data, (void*)h, j);


        size_t postfixlen = h->size - j;
        size_t nodesize = sizeof(raxNode)+postfixlen+raxPadding(postfixlen)+
                          sizeof(raxNode*);
        if (data != ((void*)0)) nodesize += sizeof(void*);
        raxNode *postfix = rax_malloc(nodesize);

        nodesize = sizeof(raxNode)+j+raxPadding(j)+sizeof(raxNode*);
        if (h->iskey && !h->isnull) nodesize += sizeof(void*);
        raxNode *trimmed = rax_malloc(nodesize);

        if (postfix == ((void*)0) || trimmed == ((void*)0)) {
            rax_free(postfix);
            rax_free(trimmed);
            errno = ENOMEM;
            return 0;
        }


        raxNode **childfield = raxNodeLastChildPtr(h);
        raxNode *next;
        memcpy(&next,childfield,sizeof(next));


        postfix->size = postfixlen;
        postfix->iscompr = postfixlen > 1;
        postfix->iskey = 1;
        postfix->isnull = 0;
        memcpy(postfix->data,h->data+j,postfixlen);
        raxSetData(postfix,data);
        raxNode **cp = raxNodeLastChildPtr(postfix);
        memcpy(cp,&next,sizeof(next));
        rax->numnodes++;


        trimmed->size = j;
        trimmed->iscompr = j > 1;
        trimmed->iskey = 0;
        trimmed->isnull = 0;
        memcpy(trimmed->data,h->data,j);
        memcpy(parentlink,&trimmed,sizeof(trimmed));
        if (h->iskey) {
            void *aux = raxGetData(h);
            raxSetData(trimmed,aux);
        }



        cp = raxNodeLastChildPtr(trimmed);
        memcpy(cp,&postfix,sizeof(postfix));



        rax->numele++;
        rax_free(h);
        return 1;
    }



    while(i < len) {
        raxNode *child;




        if (h->size == 0 && len-i > 1) {
            debugf("Inserting compressed node\n");
            size_t comprsize = len-i;
            if (comprsize > RAX_NODE_MAX_SIZE)
                comprsize = RAX_NODE_MAX_SIZE;
            raxNode *newh = raxCompressNode(h,s+i,comprsize,&child);
            if (newh == ((void*)0)) goto oom;
            h = newh;
            memcpy(parentlink,&h,sizeof(h));
            parentlink = raxNodeLastChildPtr(h);
            i += comprsize;
        } else {
            debugf("Inserting normal node\n");
            raxNode **new_parentlink;
            raxNode *newh = raxAddChild(h,s[i],&child,&new_parentlink);
            if (newh == ((void*)0)) goto oom;
            h = newh;
            memcpy(parentlink,&h,sizeof(h));
            parentlink = new_parentlink;
            i++;
        }
        rax->numnodes++;
        h = child;
    }
    raxNode *newh = raxReallocForData(h,data);
    if (newh == ((void*)0)) goto oom;
    h = newh;
    if (!h->iskey) rax->numele++;
    raxSetData(h,data);
    memcpy(parentlink,&h,sizeof(h));
    return 1;

oom:





    if (h->size == 0) {
        h->isnull = 1;
        h->iskey = 1;
        rax->numele++;
        assert(raxRemove(rax,s,i,((void*)0)) != 0);
    }
    errno = ENOMEM;
    return 0;
}
