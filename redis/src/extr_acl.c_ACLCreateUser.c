
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int allowed_commands; void* patterns; void* passwords; int * allowed_subcommands; int flags; int name; } ;
typedef TYPE_1__ user ;


 int ACLListDupSds ;
 int ACLListFreeSds ;
 int ACLListMatchSds ;
 int USER_FLAG_DISABLED ;
 int Users ;
 void* listCreate () ;
 int listSetDupMethod (void*,int ) ;
 int listSetFreeMethod (void*,int ) ;
 int listSetMatchMethod (void*,int ) ;
 int memset (int ,int ,int) ;
 scalar_t__ raxFind (int ,unsigned char*,size_t) ;
 int raxInsert (int ,unsigned char*,size_t,TYPE_1__*,int *) ;
 scalar_t__ raxNotFound ;
 int sdsnewlen (char const*,size_t) ;
 TYPE_1__* zmalloc (int) ;

user *ACLCreateUser(const char *name, size_t namelen) {
    if (raxFind(Users,(unsigned char*)name,namelen) != raxNotFound) return ((void*)0);
    user *u = zmalloc(sizeof(*u));
    u->name = sdsnewlen(name,namelen);
    u->flags = USER_FLAG_DISABLED;
    u->allowed_subcommands = ((void*)0);
    u->passwords = listCreate();
    u->patterns = listCreate();
    listSetMatchMethod(u->passwords,ACLListMatchSds);
    listSetFreeMethod(u->passwords,ACLListFreeSds);
    listSetDupMethod(u->passwords,ACLListDupSds);
    listSetMatchMethod(u->patterns,ACLListMatchSds);
    listSetFreeMethod(u->patterns,ACLListFreeSds);
    listSetDupMethod(u->patterns,ACLListDupSds);
    memset(u->allowed_commands,0,sizeof(u->allowed_commands));
    raxInsert(Users,(unsigned char*)name,namelen,u,((void*)0));
    return u;
}
