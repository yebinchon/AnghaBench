
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int patterns; int passwords; } ;
typedef TYPE_1__ user ;
typedef int sds ;
typedef int listNode ;
typedef int listIter ;
struct TYPE_6__ {int flag; int name; } ;


 int ACLDescribeUserCommandRules (TYPE_1__*) ;
 TYPE_2__* ACLUserFlags ;
 int USER_FLAG_ALLCOMMANDS ;
 int USER_FLAG_ALLKEYS ;
 int * listNext (int *) ;
 int listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int sdscat (int ,int ) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatsds (int ,int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;

sds ACLDescribeUser(user *u) {
    sds res = sdsempty();


    for (int j = 0; ACLUserFlags[j].flag; j++) {


        if (ACLUserFlags[j].flag == USER_FLAG_ALLKEYS ||
            ACLUserFlags[j].flag == USER_FLAG_ALLCOMMANDS) continue;
        if (u->flags & ACLUserFlags[j].flag) {
            res = sdscat(res,ACLUserFlags[j].name);
            res = sdscatlen(res," ",1);
        }
    }


    listIter li;
    listNode *ln;
    listRewind(u->passwords,&li);
    while((ln = listNext(&li))) {
        sds thispass = listNodeValue(ln);
        res = sdscatlen(res,"#",1);
        res = sdscatsds(res,thispass);
        res = sdscatlen(res," ",1);
    }


    if (u->flags & USER_FLAG_ALLKEYS) {
        res = sdscatlen(res,"~* ",3);
    } else {
        listRewind(u->patterns,&li);
        while((ln = listNext(&li))) {
            sds thispat = listNodeValue(ln);
            res = sdscatlen(res,"~",1);
            res = sdscatsds(res,thispat);
            res = sdscatlen(res," ",1);
        }
    }


    sds rules = ACLDescribeUserCommandRules(u);
    res = sdscatsds(res,rules);
    sdsfree(rules);
    return res;
}
