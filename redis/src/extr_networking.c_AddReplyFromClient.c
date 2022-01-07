
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bufpos; scalar_t__ reply_bytes; int reply; int buf; } ;
typedef TYPE_1__ client ;


 scalar_t__ C_OK ;
 int addReplyProto (TYPE_1__*,int ,scalar_t__) ;
 int listJoin (int ,int ) ;
 scalar_t__ listLength (int ) ;
 scalar_t__ prepareClientToWrite (TYPE_1__*) ;

void AddReplyFromClient(client *dst, client *src) {
    if (prepareClientToWrite(dst) != C_OK)
        return;
    addReplyProto(dst,src->buf, src->bufpos);
    if (listLength(src->reply))
        listJoin(dst->reply,src->reply);
    dst->reply_bytes += src->reply_bytes;
    src->reply_bytes = 0;
    src->bufpos = 0;
}
