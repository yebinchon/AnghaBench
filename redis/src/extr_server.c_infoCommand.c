
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sds ;
struct TYPE_8__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_9__ {int syntaxerr; } ;
struct TYPE_7__ {char* ptr; } ;


 int addReply (TYPE_2__*,int ) ;
 int addReplyVerbatim (TYPE_2__*,int ,int ,char*) ;
 int genRedisInfoString (char*) ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 TYPE_3__ shared ;

void infoCommand(client *c) {
    char *section = c->argc == 2 ? c->argv[1]->ptr : "default";

    if (c->argc > 2) {
        addReply(c,shared.syntaxerr);
        return;
    }
    sds info = genRedisInfoString(section);
    addReplyVerbatim(c,info,sdslen(info),"txt");
    sdsfree(info);
}
