#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listNode ;
struct TYPE_9__ {size_t size; size_t used; scalar_t__ buf; } ;
typedef  TYPE_1__ clientReplyBlock ;
struct TYPE_10__ {int flags; int reply_bytes; int /*<<< orphan*/  reply; } ;
typedef  TYPE_2__ client ;

/* Variables and functions */
 int CLIENT_CLOSE_AFTER_REPLY ; 
 size_t PROTO_REPLY_CHUNK_BYTES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char const*,size_t) ; 
 TYPE_1__* FUNC5 (size_t) ; 
 int FUNC6 (TYPE_1__*) ; 

void FUNC7(client *c, const char *s, size_t len) {
    if (c->flags & CLIENT_CLOSE_AFTER_REPLY) return;

    listNode *ln = FUNC2(c->reply);
    clientReplyBlock *tail = ln? FUNC3(ln): NULL;

    /* Note that 'tail' may be NULL even if we have a tail node, becuase when
     * addDeferredMultiBulkLength() is used, it sets a dummy node to NULL just
     * fo fill it later, when the size of the bulk length is set. */

    /* Append to tail string when possible. */
    if (tail) {
        /* Copy the part we can fit into the tail, and leave the rest for a
         * new node */
        size_t avail = tail->size - tail->used;
        size_t copy = avail >= len? len: avail;
        FUNC4(tail->buf + tail->used, s, copy);
        tail->used += copy;
        s += copy;
        len -= copy;
    }
    if (len) {
        /* Create a new node, make sure it is allocated to at
         * least PROTO_REPLY_CHUNK_BYTES */
        size_t size = len < PROTO_REPLY_CHUNK_BYTES? PROTO_REPLY_CHUNK_BYTES: len;
        tail = FUNC5(size + sizeof(clientReplyBlock));
        /* take over the allocation's internal fragmentation */
        tail->size = FUNC6(tail) - sizeof(clientReplyBlock);
        tail->used = len;
        FUNC4(tail->buf, s, len);
        FUNC1(c->reply, tail);
        c->reply_bytes += tail->size;
    }
    FUNC0(c);
}