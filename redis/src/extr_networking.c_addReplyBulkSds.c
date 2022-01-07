
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sds ;
typedef int client ;
struct TYPE_2__ {int crlf; } ;


 int addReply (int *,int ) ;
 int addReplyLongLongWithPrefix (int *,int ,char) ;
 int addReplySds (int *,int ) ;
 int sdslen (int ) ;
 TYPE_1__ shared ;

void addReplyBulkSds(client *c, sds s) {
    addReplyLongLongWithPrefix(c,sdslen(s),'$');
    addReplySds(c,s);
    addReply(c,shared.crlf);
}
