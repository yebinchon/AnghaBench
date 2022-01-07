
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client ;
struct TYPE_2__ {int * mbulkhdr; } ;


 long OBJ_SHARED_BULKHDR_LEN ;
 int addReply (int *,int ) ;
 int addReplyLongLongWithPrefix (int *,long,int) ;
 TYPE_1__ shared ;

void addReplyAggregateLen(client *c, long length, int prefix) {
    if (prefix == '*' && length < OBJ_SHARED_BULKHDR_LEN)
        addReply(c,shared.mbulkhdr[length]);
    else
        addReplyLongLongWithPrefix(c,length,prefix);
}
