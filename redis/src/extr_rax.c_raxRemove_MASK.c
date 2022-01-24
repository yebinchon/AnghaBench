#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ oom; } ;
typedef  TYPE_1__ raxStack ;
struct TYPE_29__ {int iscompr; scalar_t__ iskey; int size; struct TYPE_29__** data; scalar_t__ isnull; } ;
typedef  TYPE_2__ raxNode ;
struct TYPE_30__ {TYPE_2__* head; int /*<<< orphan*/  numnodes; int /*<<< orphan*/  numele; } ;
typedef  TYPE_3__ rax ;
typedef  int /*<<< orphan*/  new ;
typedef  int /*<<< orphan*/  h ;

/* Variables and functions */
 scalar_t__ RAX_NODE_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_2__**,int) ; 
 TYPE_2__** FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 void* FUNC4 (TYPE_2__*) ; 
 size_t FUNC5 (TYPE_3__*,unsigned char*,size_t,TYPE_2__**,int /*<<< orphan*/ *,int*,TYPE_1__*) ; 
 TYPE_2__** FUNC6 (TYPE_2__*) ; 
 int FUNC7 (size_t) ; 
 TYPE_2__* FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 TYPE_2__* FUNC11 (TYPE_1__*) ; 
 TYPE_2__* FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 TYPE_2__* FUNC14 (size_t) ; 

int FUNC15(rax *rax, unsigned char *s, size_t len, void **old) {
    raxNode *h;
    raxStack ts;

    FUNC0("### Delete: %.*s\n", (int)len, s);
    FUNC10(&ts);
    int splitpos = 0;
    size_t i = FUNC5(rax,s,len,&h,NULL,&splitpos,&ts);
    if (i != len || (h->iscompr && splitpos != 0) || !h->iskey) {
        FUNC9(&ts);
        return 0;
    }
    if (old) *old = FUNC4(h);
    h->iskey = 0;
    rax->numele--;

    /* If this node has no children, the deletion needs to reclaim the
     * no longer used nodes. This is an iterative process that needs to
     * walk the three upward, deleting all the nodes with just one child
     * that are not keys, until the head of the rax is reached or the first
     * node with more than one child is found. */

    int trycompress = 0; /* Will be set to 1 if we should try to optimize the
                            tree resulting from the deletion. */

    if (h->size == 0) {
        FUNC0("Key deleted in node without children. Cleanup needed.\n");
        raxNode *child = NULL;
        while(h != rax->head) {
            child = h;
            FUNC0("Freeing child %p [%.*s] key:%d\n", (void*)child,
                (int)child->size, (char*)child->data, child->iskey);
            FUNC13(child);
            rax->numnodes--;
            h = FUNC12(&ts);
             /* If this node has more then one child, or actually holds
              * a key, stop here. */
            if (h->iskey || (!h->iscompr && h->size != 1)) break;
        }
        if (child) {
            FUNC0("Unlinking child %p from parent %p\n",
                (void*)child, (void*)h);
            raxNode *new = FUNC8(h,child);
            if (new != h) {
                raxNode *parent = FUNC11(&ts);
                raxNode **parentlink;
                if (parent == NULL) {
                    parentlink = &rax->head;
                } else {
                    parentlink = FUNC3(parent,h);
                }
                FUNC2(parentlink,&new,sizeof(new));
            }

            /* If after the removal the node has just a single child
             * and is not a key, we need to try to compress it. */
            if (new->size == 1 && new->iskey == 0) {
                trycompress = 1;
                h = new;
            }
        }
    } else if (h->size == 1) {
        /* If the node had just one child, after the removal of the key
         * further compression with adjacent nodes is pontentially possible. */
        trycompress = 1;
    }

    /* Don't try node compression if our nodes pointers stack is not
     * complete because of OOM while executing raxLowWalk() */
    if (trycompress && ts.oom) trycompress = 0;

    /* Recompression: if trycompress is true, 'h' points to a radix tree node
     * that changed in a way that could allow to compress nodes in this
     * sub-branch. Compressed nodes represent chains of nodes that are not
     * keys and have a single child, so there are two deletion events that
     * may alter the tree so that further compression is needed:
     *
     * 1) A node with a single child was a key and now no longer is a key.
     * 2) A node with two children now has just one child.
     *
     * We try to navigate upward till there are other nodes that can be
     * compressed, when we reach the upper node which is not a key and has
     * a single child, we scan the chain of children to collect the
     * compressable part of the tree, and replace the current node with the
     * new one, fixing the child pointer to reference the first non
     * compressable node.
     *
     * Example of case "1". A tree stores the keys "FOO" = 1 and
     * "FOOBAR" = 2:
     *
     *
     * "FOO" -> "BAR" -> [] (2)
     *           (1)
     *
     * After the removal of "FOO" the tree can be compressed as:
     *
     * "FOOBAR" -> [] (2)
     *
     *
     * Example of case "2". A tree stores the keys "FOOBAR" = 1 and
     * "FOOTER" = 2:
     *
     *          |B| -> "AR" -> [] (1)
     * "FOO" -> |-|
     *          |T| -> "ER" -> [] (2)
     *
     * After the removal of "FOOTER" the resulting tree is:
     *
     * "FOO" -> |B| -> "AR" -> [] (1)
     *
     * That can be compressed into:
     *
     * "FOOBAR" -> [] (1)
     */
    if (trycompress) {
        FUNC0("After removing %.*s:\n", (int)len, s);
        FUNC1("Compression may be needed",h);
        FUNC0("Seek start node\n");

        /* Try to reach the upper node that is compressible.
         * At the end of the loop 'h' will point to the first node we
         * can try to compress and 'parent' to its parent. */
        raxNode *parent;
        while(1) {
            parent = FUNC12(&ts);
            if (!parent || parent->iskey ||
                (!parent->iscompr && parent->size != 1)) break;
            h = parent;
            FUNC1("Going up to",h);
        }
        raxNode *start = h; /* Compression starting node. */

        /* Scan chain of nodes we can compress. */
        size_t comprsize = h->size;
        int nodes = 1;
        while(h->size != 0) {
            raxNode **cp = FUNC6(h);
            FUNC2(&h,cp,sizeof(h));
            if (h->iskey || (!h->iscompr && h->size != 1)) break;
            /* Stop here if going to the next node would result into
             * a compressed node larger than h->size can hold. */
            if (comprsize + h->size > RAX_NODE_MAX_SIZE) break;
            nodes++;
            comprsize += h->size;
        }
        if (nodes > 1) {
            /* If we can compress, create the new node and populate it. */
            size_t nodesize =
                sizeof(raxNode)+comprsize+FUNC7(comprsize)+sizeof(raxNode*);
            raxNode *new = FUNC14(nodesize);
            /* An out of memory here just means we cannot optimize this
             * node, but the tree is left in a consistent state. */
            if (new == NULL) {
                FUNC9(&ts);
                return 1;
            }
            new->iskey = 0;
            new->isnull = 0;
            new->iscompr = 1;
            new->size = comprsize;
            rax->numnodes++;

            /* Scan again, this time to populate the new node content and
             * to fix the new node child pointer. At the same time we free
             * all the nodes that we'll no longer use. */
            comprsize = 0;
            h = start;
            while(h->size != 0) {
                FUNC2(new->data+comprsize,h->data,h->size);
                comprsize += h->size;
                raxNode **cp = FUNC6(h);
                raxNode *tofree = h;
                FUNC2(&h,cp,sizeof(h));
                FUNC13(tofree); rax->numnodes--;
                if (h->iskey || (!h->iscompr && h->size != 1)) break;
            }
            FUNC1("New node",new);

            /* Now 'h' points to the first node that we still need to use,
             * so our new node child pointer will point to it. */
            raxNode **cp = FUNC6(new);
            FUNC2(cp,&h,sizeof(h));

            /* Fix parent link. */
            if (parent) {
                raxNode **parentlink = FUNC3(parent,start);
                FUNC2(parentlink,&new,sizeof(new));
            } else {
                rax->head = new;
            }

            FUNC0("Compressed %d nodes, %d total bytes\n",
                nodes, (int)comprsize);
        }
    }
    FUNC9(&ts);
    return 1;
}