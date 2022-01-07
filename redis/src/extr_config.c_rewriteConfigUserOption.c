
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int name; } ;
typedef TYPE_1__ user ;
struct rewriteConfigState {int dummy; } ;
typedef int sds ;
struct TYPE_10__ {TYPE_1__* data; } ;
typedef TYPE_2__ raxIterator ;
struct TYPE_11__ {char* acl_filename; } ;


 int ACLDescribeUser (TYPE_1__*) ;
 int Users ;
 scalar_t__ raxNext (TYPE_2__*) ;
 int raxSeek (TYPE_2__*,char*,int *,int ) ;
 int raxStart (TYPE_2__*,int ) ;
 int raxStop (TYPE_2__*) ;
 int rewriteConfigMarkAsProcessed (struct rewriteConfigState*,char*) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char*,int ,int) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatsds (int ,int ) ;
 int sdsfree (int ) ;
 int sdsnew (char*) ;
 TYPE_3__ server ;

void rewriteConfigUserOption(struct rewriteConfigState *state) {



    if (server.acl_filename[0] != '\0') {
        rewriteConfigMarkAsProcessed(state,"user");
        return;
    }




    raxIterator ri;
    raxStart(&ri,Users);
    raxSeek(&ri,"^",((void*)0),0);
    while(raxNext(&ri)) {
        user *u = ri.data;
        sds line = sdsnew("user ");
        line = sdscatsds(line,u->name);
        line = sdscatlen(line," ",1);
        sds descr = ACLDescribeUser(u);
        line = sdscatsds(line,descr);
        sdsfree(descr);
        rewriteConfigRewriteLine(state,"user",line,1);
    }
    raxStop(&ri);


    rewriteConfigMarkAsProcessed(state,"user");
}
