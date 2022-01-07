
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bufpos; int flags; scalar_t__ buf; int reply; } ;
typedef TYPE_1__ client ;


 int CLIENT_CLOSE_AFTER_REPLY ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ listLength (int ) ;
 int memcpy (scalar_t__,char const*,size_t) ;

int _addReplyToBuffer(client *c, const char *s, size_t len) {
    size_t available = sizeof(c->buf)-c->bufpos;

    if (c->flags & CLIENT_CLOSE_AFTER_REPLY) return C_OK;



    if (listLength(c->reply) > 0) return C_ERR;


    if (len > available) return C_ERR;

    memcpy(c->buf+c->bufpos,s,len);
    c->bufpos+=len;
    return C_OK;
}
