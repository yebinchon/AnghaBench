
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_9__ {int authenticated; int user; } ;
typedef TYPE_2__ client ;


 scalar_t__ ACLCheckUserCredentials (TYPE_1__*,TYPE_1__*) ;
 int ACLGetUserByName (int ,int ) ;
 int C_ERR ;
 scalar_t__ C_OK ;
 int sdslen (int ) ;

int ACLAuthenticateUser(client *c, robj *username, robj *password) {
    if (ACLCheckUserCredentials(username,password) == C_OK) {
        c->authenticated = 1;
        c->user = ACLGetUserByName(username->ptr,sdslen(username->ptr));
        return C_OK;
    } else {
        return C_ERR;
    }
}
