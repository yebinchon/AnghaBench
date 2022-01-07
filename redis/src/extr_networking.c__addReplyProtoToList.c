
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int listNode ;
struct TYPE_9__ {size_t size; size_t used; scalar_t__ buf; } ;
typedef TYPE_1__ clientReplyBlock ;
struct TYPE_10__ {int flags; int reply_bytes; int reply; } ;
typedef TYPE_2__ client ;


 int CLIENT_CLOSE_AFTER_REPLY ;
 size_t PROTO_REPLY_CHUNK_BYTES ;
 int asyncCloseClientOnOutputBufferLimitReached (TYPE_2__*) ;
 int listAddNodeTail (int ,TYPE_1__*) ;
 int * listLast (int ) ;
 TYPE_1__* listNodeValue (int *) ;
 int memcpy (scalar_t__,char const*,size_t) ;
 TYPE_1__* zmalloc (size_t) ;
 int zmalloc_usable (TYPE_1__*) ;

void _addReplyProtoToList(client *c, const char *s, size_t len) {
    if (c->flags & CLIENT_CLOSE_AFTER_REPLY) return;

    listNode *ln = listLast(c->reply);
    clientReplyBlock *tail = ln? listNodeValue(ln): ((void*)0);






    if (tail) {


        size_t avail = tail->size - tail->used;
        size_t copy = avail >= len? len: avail;
        memcpy(tail->buf + tail->used, s, copy);
        tail->used += copy;
        s += copy;
        len -= copy;
    }
    if (len) {


        size_t size = len < PROTO_REPLY_CHUNK_BYTES? PROTO_REPLY_CHUNK_BYTES: len;
        tail = zmalloc(size + sizeof(clientReplyBlock));

        tail->size = zmalloc_usable(tail) - sizeof(clientReplyBlock);
        tail->used = len;
        memcpy(tail->buf, s, len);
        listAddNodeTail(c->reply, tail);
        c->reply_bytes += tail->size;
    }
    asyncCloseClientOnOutputBufferLimitReached(c);
}
