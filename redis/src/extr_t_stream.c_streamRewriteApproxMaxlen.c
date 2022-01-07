
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
typedef TYPE_1__ stream ;
typedef int robj ;
typedef int client ;


 int * createStringObject (char*,int) ;
 int * createStringObjectFromLongLong (int ) ;
 int decrRefCount (int *) ;
 int rewriteClientCommandArgument (int *,int,int *) ;

void streamRewriteApproxMaxlen(client *c, stream *s, int maxlen_arg_idx) {
    robj *maxlen_obj = createStringObjectFromLongLong(s->length);
    robj *equal_obj = createStringObject("=",1);

    rewriteClientCommandArgument(c,maxlen_arg_idx,maxlen_obj);
    rewriteClientCommandArgument(c,maxlen_arg_idx-1,equal_obj);

    decrRefCount(equal_obj);
    decrRefCount(maxlen_obj);
}
