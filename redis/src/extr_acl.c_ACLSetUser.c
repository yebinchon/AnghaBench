
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; int patterns; int passwords; int allowed_commands; } ;
typedef TYPE_1__ user ;
typedef int ssize_t ;
typedef int sds ;
typedef int listNode ;


 int ACLAddAllowedSubcommand (TYPE_1__*,unsigned long,char*) ;
 unsigned long ACLGetCommandID (char const*) ;
 int ACLGetUserCommandBit (TYPE_1__*,unsigned long) ;
 int ACLHashPassword (unsigned char*,int) ;
 int * ACLLookupCommand (char const*) ;
 int ACLResetSubcommands (TYPE_1__*) ;
 int ACLResetSubcommandsForCommand (TYPE_1__*,unsigned long) ;
 int ACLSetUserCommandBit (TYPE_1__*,unsigned long,int) ;
 int ACLSetUserCommandBitsForCategory (TYPE_1__*,char const*,int) ;
 int C_ERR ;
 scalar_t__ C_OK ;
 int EBADMSG ;
 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int HASH_PASSWORD_LEN ;
 int USER_FLAG_ALLCOMMANDS ;
 int USER_FLAG_ALLKEYS ;
 int USER_FLAG_DISABLED ;
 int USER_FLAG_ENABLED ;
 int USER_FLAG_NOPASS ;
 int errno ;
 int listAddNodeTail (int ,int ) ;
 int listDelNode (int ,int *) ;
 int listEmpty (int ) ;
 int * listSearchKey (int ,int ) ;
 int memset (int ,int,int) ;
 int sdsfree (int ) ;
 int sdsnewlen (char const*,int) ;
 int serverAssert (int) ;
 int strcasecmp (char const*,char*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strlen (char const*) ;
 int zfree (char*) ;
 char* zstrdup (char const*) ;

int ACLSetUser(user *u, const char *op, ssize_t oplen) {
    if (oplen == -1) oplen = strlen(op);
    if (!strcasecmp(op,"on")) {
        u->flags |= USER_FLAG_ENABLED;
        u->flags &= ~USER_FLAG_DISABLED;
    } else if (!strcasecmp(op,"off")) {
        u->flags |= USER_FLAG_DISABLED;
        u->flags &= ~USER_FLAG_ENABLED;
    } else if (!strcasecmp(op,"allkeys") ||
               !strcasecmp(op,"~*"))
    {
        u->flags |= USER_FLAG_ALLKEYS;
        listEmpty(u->patterns);
    } else if (!strcasecmp(op,"resetkeys")) {
        u->flags &= ~USER_FLAG_ALLKEYS;
        listEmpty(u->patterns);
    } else if (!strcasecmp(op,"allcommands") ||
               !strcasecmp(op,"+@all"))
    {
        memset(u->allowed_commands,255,sizeof(u->allowed_commands));
        u->flags |= USER_FLAG_ALLCOMMANDS;
        ACLResetSubcommands(u);
    } else if (!strcasecmp(op,"nocommands") ||
               !strcasecmp(op,"-@all"))
    {
        memset(u->allowed_commands,0,sizeof(u->allowed_commands));
        u->flags &= ~USER_FLAG_ALLCOMMANDS;
        ACLResetSubcommands(u);
    } else if (!strcasecmp(op,"nopass")) {
        u->flags |= USER_FLAG_NOPASS;
        listEmpty(u->passwords);
    } else if (!strcasecmp(op,"resetpass")) {
        u->flags &= ~USER_FLAG_NOPASS;
        listEmpty(u->passwords);
    } else if (op[0] == '>' || op[0] == '#') {
        sds newpass;
        if (op[0] == '>') {
            newpass = ACLHashPassword((unsigned char*)op+1,oplen-1);
        } else {
            if (oplen != HASH_PASSWORD_LEN + 1) {
                errno = EBADMSG;
                return C_ERR;
            }





            for(int i = 1; i < HASH_PASSWORD_LEN + 1; i++) {
                char c = op[i];
                if ((c < 'a' || c > 'f') && (c < '0' || c > '9')) {
                    errno = EBADMSG;
                    return C_ERR;
                }
            }
            newpass = sdsnewlen(op+1,oplen-1);
        }

        listNode *ln = listSearchKey(u->passwords,newpass);

        if (ln == ((void*)0))
            listAddNodeTail(u->passwords,newpass);
        else
            sdsfree(newpass);
        u->flags &= ~USER_FLAG_NOPASS;
    } else if (op[0] == '<' || op[0] == '!') {
        sds delpass;
        if (op[0] == '<') {
            delpass = ACLHashPassword((unsigned char*)op+1,oplen-1);
        } else {
            if (oplen != HASH_PASSWORD_LEN + 1) {
                errno = EBADMSG;
                return C_ERR;
            }
            delpass = sdsnewlen(op+1,oplen-1);
        }
        listNode *ln = listSearchKey(u->passwords,delpass);
        sdsfree(delpass);
        if (ln) {
            listDelNode(u->passwords,ln);
        } else {
            errno = ENODEV;
            return C_ERR;
        }
    } else if (op[0] == '~') {
        if (u->flags & USER_FLAG_ALLKEYS) {
            errno = EEXIST;
            return C_ERR;
        }
        sds newpat = sdsnewlen(op+1,oplen-1);
        listNode *ln = listSearchKey(u->patterns,newpat);

        if (ln == ((void*)0))
            listAddNodeTail(u->patterns,newpat);
        else
            sdsfree(newpat);
        u->flags &= ~USER_FLAG_ALLKEYS;
    } else if (op[0] == '+' && op[1] != '@') {
        if (strchr(op,'|') == ((void*)0)) {
            if (ACLLookupCommand(op+1) == ((void*)0)) {
                errno = ENOENT;
                return C_ERR;
            }
            unsigned long id = ACLGetCommandID(op+1);
            ACLSetUserCommandBit(u,id,1);
            ACLResetSubcommandsForCommand(u,id);
        } else {

            char *copy = zstrdup(op+1);
            char *sub = strchr(copy,'|');
            sub[0] = '\0';
            sub++;



            if (ACLLookupCommand(copy) == ((void*)0)) {
                zfree(copy);
                errno = ENOENT;
                return C_ERR;
            }
            unsigned long id = ACLGetCommandID(copy);



            if (strlen(sub) == 0) {
                zfree(copy);
                errno = EINVAL;
                return C_ERR;
            }




            if (ACLGetUserCommandBit(u,id) == 1) {
                zfree(copy);
                errno = EBUSY;
                return C_ERR;
            }


            ACLAddAllowedSubcommand(u,id,sub);



            ACLSetUserCommandBit(u,id,0);
            zfree(copy);
        }
    } else if (op[0] == '-' && op[1] != '@') {
        if (ACLLookupCommand(op+1) == ((void*)0)) {
            errno = ENOENT;
            return C_ERR;
        }
        unsigned long id = ACLGetCommandID(op+1);
        ACLSetUserCommandBit(u,id,0);
        ACLResetSubcommandsForCommand(u,id);
    } else if ((op[0] == '+' || op[0] == '-') && op[1] == '@') {
        int bitval = op[0] == '+' ? 1 : 0;
        if (ACLSetUserCommandBitsForCategory(u,op+2,bitval) == C_ERR) {
            errno = ENOENT;
            return C_ERR;
        }
    } else if (!strcasecmp(op,"reset")) {
        serverAssert(ACLSetUser(u,"resetpass",-1) == C_OK);
        serverAssert(ACLSetUser(u,"resetkeys",-1) == C_OK);
        serverAssert(ACLSetUser(u,"off",-1) == C_OK);
        serverAssert(ACLSetUser(u,"-@all",-1) == C_OK);
    } else {
        errno = EINVAL;
        return C_ERR;
    }
    return C_OK;
}
