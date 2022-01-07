
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__** allowed_subcommands; } ;
typedef TYPE_1__ user ;


 int sdsfree (scalar_t__) ;
 int zfree (scalar_t__*) ;

void ACLResetSubcommandsForCommand(user *u, unsigned long id) {
    if (u->allowed_subcommands && u->allowed_subcommands[id]) {
        for (int i = 0; u->allowed_subcommands[id][i]; i++)
            sdsfree(u->allowed_subcommands[id][i]);
        zfree(u->allowed_subcommands[id]);
        u->allowed_subcommands[id] = ((void*)0);
    }
}
