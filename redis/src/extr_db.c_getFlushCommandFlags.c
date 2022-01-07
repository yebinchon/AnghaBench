
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_8__ {int syntaxerr; } ;
struct TYPE_6__ {int ptr; } ;


 int C_ERR ;
 int C_OK ;
 int EMPTYDB_ASYNC ;
 int EMPTYDB_NO_FLAGS ;
 int addReply (TYPE_2__*,int ) ;
 TYPE_3__ shared ;
 scalar_t__ strcasecmp (int ,char*) ;

int getFlushCommandFlags(client *c, int *flags) {

    if (c->argc > 1) {
        if (c->argc > 2 || strcasecmp(c->argv[1]->ptr,"async")) {
            addReply(c,shared.syntaxerr);
            return C_ERR;
        }
        *flags = EMPTYDB_ASYNC;
    } else {
        *flags = EMPTYDB_NO_FLAGS;
    }
    return C_OK;
}
