
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ user ;
typedef char* sds ;
typedef int listNode ;
typedef int listIter ;


 TYPE_1__* ACLCreateUser (char*,int) ;
 TYPE_1__* ACLGetUserByName (char*,int) ;
 scalar_t__ ACLSetUser (TYPE_1__*,char*,int) ;
 char* ACLSetUserStringError () ;
 int C_ERR ;
 scalar_t__ C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int USER_FLAG_DISABLED ;
 int UsersToLoad ;
 int * listNext (int *) ;
 char** listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int sdslen (char*) ;
 int serverAssert (int ) ;
 int serverLog (int ,char*,char*,...) ;

int ACLLoadConfiguredUsers(void) {
    listIter li;
    listNode *ln;
    listRewind(UsersToLoad,&li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        sds *aclrules = listNodeValue(ln);
        sds username = aclrules[0];
        user *u = ACLCreateUser(username,sdslen(username));
        if (!u) {
            u = ACLGetUserByName(username,sdslen(username));
            serverAssert(u != ((void*)0));
            ACLSetUser(u,"reset",-1);
        }


        for (int j = 1; aclrules[j]; j++) {
            if (ACLSetUser(u,aclrules[j],sdslen(aclrules[j])) != C_OK) {
                char *errmsg = ACLSetUserStringError();
                serverLog(LL_WARNING,"Error loading ACL rule '%s' for "
                                     "the user named '%s': %s",
                          aclrules[j],aclrules[0],errmsg);
                return C_ERR;
            }
        }



        if (u->flags & USER_FLAG_DISABLED) {
            serverLog(LL_NOTICE, "The user '%s' is disabled (there is no "
                                 "'on' modifier in the user description). Make "
                                 "sure this is not a configuration error.",
                      aclrules[0]);
        }
    }
    return C_OK;
}
