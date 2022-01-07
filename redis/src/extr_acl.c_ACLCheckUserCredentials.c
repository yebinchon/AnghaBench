
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int passwords; } ;
typedef TYPE_1__ user ;
typedef int sds ;
struct TYPE_7__ {int ptr; } ;
typedef TYPE_2__ robj ;
typedef int listNode ;
typedef int listIter ;


 TYPE_1__* ACLGetUserByName (int ,int ) ;
 int ACLHashPassword (int ,int ) ;
 int C_ERR ;
 int C_OK ;
 int EINVAL ;
 int ENOENT ;
 int USER_FLAG_DISABLED ;
 int USER_FLAG_NOPASS ;
 int errno ;
 int * listNext (int *) ;
 int listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 int time_independent_strcmp (int ,int ) ;

int ACLCheckUserCredentials(robj *username, robj *password) {
    user *u = ACLGetUserByName(username->ptr,sdslen(username->ptr));
    if (u == ((void*)0)) {
        errno = ENOENT;
        return C_ERR;
    }


    if (u->flags & USER_FLAG_DISABLED) {
        errno = EINVAL;
        return C_ERR;
    }



    if (u->flags & USER_FLAG_NOPASS) return C_OK;


    listIter li;
    listNode *ln;
    listRewind(u->passwords,&li);
    sds hashed = ACLHashPassword(password->ptr,sdslen(password->ptr));
    while((ln = listNext(&li))) {
        sds thispass = listNodeValue(ln);
        if (!time_independent_strcmp(hashed, thispass)) {
            sdsfree(hashed);
            return C_OK;
        }
    }
    sdsfree(hashed);


    errno = EINVAL;
    return C_ERR;
}
