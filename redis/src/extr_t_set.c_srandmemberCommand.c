
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sds ;
typedef int robj ;
typedef int int64_t ;
struct TYPE_10__ {int argc; size_t resp; int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_11__ {int * null; int syntaxerr; } ;


 int OBJ_ENCODING_INTSET ;
 int OBJ_SET ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyBulkCBuffer (TYPE_1__*,int ,int ) ;
 int addReplyBulkLongLong (TYPE_1__*,int ) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int * lookupKeyReadOrReply (TYPE_1__*,int ,int ) ;
 int sdslen (int ) ;
 int setTypeRandomElement (int *,int *,int *) ;
 TYPE_4__ shared ;
 int srandmemberWithCountCommand (TYPE_1__*) ;

void srandmemberCommand(client *c) {
    robj *set;
    sds ele;
    int64_t llele;
    int encoding;

    if (c->argc == 3) {
        srandmemberWithCountCommand(c);
        return;
    } else if (c->argc > 3) {
        addReply(c,shared.syntaxerr);
        return;
    }

    if ((set = lookupKeyReadOrReply(c,c->argv[1],shared.null[c->resp]))
        == ((void*)0) || checkType(c,set,OBJ_SET)) return;

    encoding = setTypeRandomElement(set,&ele,&llele);
    if (encoding == OBJ_ENCODING_INTSET) {
        addReplyBulkLongLong(c,llele);
    } else {
        addReplyBulkCBuffer(c,ele,sdslen(ele));
    }
}
