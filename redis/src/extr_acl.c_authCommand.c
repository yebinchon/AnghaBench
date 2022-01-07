
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_8__ {int argc; int ** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int ok; int syntaxerr; } ;


 scalar_t__ ACLAuthenticateUser (TYPE_1__*,int *,int *) ;
 scalar_t__ C_OK ;
 TYPE_6__* DefaultUser ;
 int USER_FLAG_NOPASS ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 int * createStringObject (char*,int) ;
 int decrRefCount (int *) ;
 TYPE_2__ shared ;

void authCommand(client *c) {

    if (c->argc > 3) {
        addReply(c,shared.syntaxerr);
        return;
    }



    robj *username, *password;
    if (c->argc == 2) {


        if (DefaultUser->flags & USER_FLAG_NOPASS) {
            addReplyError(c,"AUTH <password> called without any password "
                            "configured for the default user. Are you sure "
                            "your configuration is correct?");
            return;
        }

        username = createStringObject("default",7);
        password = c->argv[1];
    } else {
        username = c->argv[1];
        password = c->argv[2];
    }

    if (ACLAuthenticateUser(c,username,password) == C_OK) {
        addReply(c,shared.ok);
    } else {
        addReplyError(c,"-WRONGPASS invalid username-password pair");
    }



    if (c->argc == 2) decrRefCount(username);
}
