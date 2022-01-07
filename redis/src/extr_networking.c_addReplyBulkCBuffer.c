
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client ;
struct TYPE_2__ {int crlf; } ;


 int addReply (int *,int ) ;
 int addReplyLongLongWithPrefix (int *,size_t,char) ;
 int addReplyProto (int *,void const*,size_t) ;
 TYPE_1__ shared ;

void addReplyBulkCBuffer(client *c, const void *p, size_t len) {
    addReplyLongLongWithPrefix(c,len,'$');
    addReplyProto(c,p,len);
    addReply(c,shared.crlf);
}
