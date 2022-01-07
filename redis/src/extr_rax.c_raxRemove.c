
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_28__ {scalar_t__ oom; } ;
typedef TYPE_1__ raxStack ;
struct TYPE_29__ {int iscompr; scalar_t__ iskey; int size; struct TYPE_29__** data; scalar_t__ isnull; } ;
typedef TYPE_2__ raxNode ;
struct TYPE_30__ {TYPE_2__* head; int numnodes; int numele; } ;
typedef TYPE_3__ rax ;
typedef int new ;
typedef int h ;


 scalar_t__ RAX_NODE_MAX_SIZE ;
 int debugf (char*,...) ;
 int debugnode (char*,TYPE_2__*) ;
 int memcpy (TYPE_2__**,TYPE_2__**,int) ;
 TYPE_2__** raxFindParentLink (TYPE_2__*,TYPE_2__*) ;
 void* raxGetData (TYPE_2__*) ;
 size_t raxLowWalk (TYPE_3__*,unsigned char*,size_t,TYPE_2__**,int *,int*,TYPE_1__*) ;
 TYPE_2__** raxNodeLastChildPtr (TYPE_2__*) ;
 int raxPadding (size_t) ;
 TYPE_2__* raxRemoveChild (TYPE_2__*,TYPE_2__*) ;
 int raxStackFree (TYPE_1__*) ;
 int raxStackInit (TYPE_1__*) ;
 TYPE_2__* raxStackPeek (TYPE_1__*) ;
 TYPE_2__* raxStackPop (TYPE_1__*) ;
 int rax_free (TYPE_2__*) ;
 TYPE_2__* rax_malloc (size_t) ;

int raxRemove(rax *rax, unsigned char *s, size_t len, void **old) {
    raxNode *h;
    raxStack ts;

    debugf("### Delete: %.*s\n", (int)len, s);
    raxStackInit(&ts);
    int splitpos = 0;
    size_t i = raxLowWalk(rax,s,len,&h,((void*)0),&splitpos,&ts);
    if (i != len || (h->iscompr && splitpos != 0) || !h->iskey) {
        raxStackFree(&ts);
        return 0;
    }
    if (old) *old = raxGetData(h);
    h->iskey = 0;
    rax->numele--;







    int trycompress = 0;


    if (h->size == 0) {
        debugf("Key deleted in node without children. Cleanup needed.\n");
        raxNode *child = ((void*)0);
        while(h != rax->head) {
            child = h;
            debugf("Freeing child %p [%.*s] key:%d\n", (void*)child,
                (int)child->size, (char*)child->data, child->iskey);
            rax_free(child);
            rax->numnodes--;
            h = raxStackPop(&ts);


            if (h->iskey || (!h->iscompr && h->size != 1)) break;
        }
        if (child) {
            debugf("Unlinking child %p from parent %p\n",
                (void*)child, (void*)h);
            raxNode *new = raxRemoveChild(h,child);
            if (new != h) {
                raxNode *parent = raxStackPeek(&ts);
                raxNode **parentlink;
                if (parent == ((void*)0)) {
                    parentlink = &rax->head;
                } else {
                    parentlink = raxFindParentLink(parent,h);
                }
                memcpy(parentlink,&new,sizeof(new));
            }



            if (new->size == 1 && new->iskey == 0) {
                trycompress = 1;
                h = new;
            }
        }
    } else if (h->size == 1) {


        trycompress = 1;
    }



    if (trycompress && ts.oom) trycompress = 0;
    if (trycompress) {
        debugf("After removing %.*s:\n", (int)len, s);
        debugnode("Compression may be needed",h);
        debugf("Seek start node\n");




        raxNode *parent;
        while(1) {
            parent = raxStackPop(&ts);
            if (!parent || parent->iskey ||
                (!parent->iscompr && parent->size != 1)) break;
            h = parent;
            debugnode("Going up to",h);
        }
        raxNode *start = h;


        size_t comprsize = h->size;
        int nodes = 1;
        while(h->size != 0) {
            raxNode **cp = raxNodeLastChildPtr(h);
            memcpy(&h,cp,sizeof(h));
            if (h->iskey || (!h->iscompr && h->size != 1)) break;


            if (comprsize + h->size > RAX_NODE_MAX_SIZE) break;
            nodes++;
            comprsize += h->size;
        }
        if (nodes > 1) {

            size_t nodesize =
                sizeof(raxNode)+comprsize+raxPadding(comprsize)+sizeof(raxNode*);
            raxNode *new = rax_malloc(nodesize);


            if (new == ((void*)0)) {
                raxStackFree(&ts);
                return 1;
            }
            new->iskey = 0;
            new->isnull = 0;
            new->iscompr = 1;
            new->size = comprsize;
            rax->numnodes++;




            comprsize = 0;
            h = start;
            while(h->size != 0) {
                memcpy(new->data+comprsize,h->data,h->size);
                comprsize += h->size;
                raxNode **cp = raxNodeLastChildPtr(h);
                raxNode *tofree = h;
                memcpy(&h,cp,sizeof(h));
                rax_free(tofree); rax->numnodes--;
                if (h->iskey || (!h->iscompr && h->size != 1)) break;
            }
            debugnode("New node",new);



            raxNode **cp = raxNodeLastChildPtr(new);
            memcpy(cp,&h,sizeof(h));


            if (parent) {
                raxNode **parentlink = raxFindParentLink(parent,start);
                memcpy(parentlink,&new,sizeof(new));
            } else {
                rax->head = new;
            }

            debugf("Compressed %d nodes, %d total bytes\n",
                nodes, (int)comprsize);
        }
    }
    raxStackFree(&ts);
    return 1;
}
