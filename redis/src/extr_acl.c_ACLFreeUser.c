
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int patterns; int passwords; int name; } ;
typedef TYPE_1__ user ;


 int ACLResetSubcommands (TYPE_1__*) ;
 int listRelease (int ) ;
 int sdsfree (int ) ;
 int zfree (TYPE_1__*) ;

void ACLFreeUser(user *u) {
    sdsfree(u->name);
    listRelease(u->passwords);
    listRelease(u->patterns);
    ACLResetSubcommands(u);
    zfree(u);
}
