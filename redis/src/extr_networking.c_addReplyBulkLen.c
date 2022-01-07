
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int robj ;
typedef int client ;
struct TYPE_2__ {int * bulkhdr; } ;


 size_t OBJ_SHARED_BULKHDR_LEN ;
 int addReply (int *,int ) ;
 int addReplyLongLongWithPrefix (int *,size_t,char) ;
 TYPE_1__ shared ;
 size_t stringObjectLen (int *) ;

void addReplyBulkLen(client *c, robj *obj) {
    size_t len = stringObjectLen(obj);

    if (len < OBJ_SHARED_BULKHDR_LEN)
        addReply(c,shared.bulkhdr[len]);
    else
        addReplyLongLongWithPrefix(c,len,'$');
}
