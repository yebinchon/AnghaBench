
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int *** allowed_subcommands; } ;
typedef TYPE_1__ user ;
typedef int sds ;


 int USER_COMMAND_BITS_COUNT ;
 int * sdsnew (char const*) ;
 int strcasecmp (int *,char const*) ;
 int *** zcalloc (int) ;
 int ** zrealloc (int **,int) ;

void ACLAddAllowedSubcommand(user *u, unsigned long id, const char *sub) {


    if (u->allowed_subcommands == ((void*)0)) {
        u->allowed_subcommands = zcalloc(USER_COMMAND_BITS_COUNT *
                                 sizeof(sds*));
    }





    long items = 0;
    if (u->allowed_subcommands[id]) {
        while(u->allowed_subcommands[id][items]) {

            if (!strcasecmp(u->allowed_subcommands[id][items],sub)) return;
            items++;
        }
    }


    items += 2;
    u->allowed_subcommands[id] = zrealloc(u->allowed_subcommands[id],
                                 sizeof(sds)*items);
    u->allowed_subcommands[id][items-2] = sdsnew(sub);
    u->allowed_subcommands[id][items-1] = ((void*)0);
}
