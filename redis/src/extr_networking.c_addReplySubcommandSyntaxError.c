
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sds ;
struct TYPE_6__ {TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_5__ {scalar_t__ ptr; } ;


 int addReplyErrorFormat (TYPE_2__*,char*,char*,int ) ;
 int sdsfree (int ) ;
 int sdsnew (char*) ;
 int sdstoupper (int ) ;

void addReplySubcommandSyntaxError(client *c) {
    sds cmd = sdsnew((char*) c->argv[0]->ptr);
    sdstoupper(cmd);
    addReplyErrorFormat(c,
        "Unknown subcommand or wrong number of arguments for '%s'. Try %s HELP.",
        (char*)c->argv[1]->ptr,cmd);
    sdsfree(cmd);
}
