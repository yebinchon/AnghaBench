
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__** allowed_subcommands; int flags; int allowed_commands; void* patterns; void* passwords; } ;
typedef TYPE_1__ user ;


 int ACLAddAllowedSubcommand (TYPE_1__*,int,scalar_t__) ;
 int ACLResetSubcommands (TYPE_1__*) ;
 int USER_COMMAND_BITS_COUNT ;
 void* listDup (void*) ;
 int listRelease (void*) ;
 int memcpy (int ,int ,int) ;

void ACLCopyUser(user *dst, user *src) {
    listRelease(dst->passwords);
    listRelease(dst->patterns);
    dst->passwords = listDup(src->passwords);
    dst->patterns = listDup(src->patterns);
    memcpy(dst->allowed_commands,src->allowed_commands,
           sizeof(dst->allowed_commands));
    dst->flags = src->flags;
    ACLResetSubcommands(dst);

    if (src->allowed_subcommands) {
        for (int j = 0; j < USER_COMMAND_BITS_COUNT; j++) {
            if (src->allowed_subcommands[j]) {
                for (int i = 0; src->allowed_subcommands[j][i]; i++)
                {
                    ACLAddAllowedSubcommand(dst, j,
                        src->allowed_subcommands[j][i]);
                }
            }
        }
    }
}
