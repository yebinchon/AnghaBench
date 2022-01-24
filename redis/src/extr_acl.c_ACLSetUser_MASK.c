#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flags; int /*<<< orphan*/  patterns; int /*<<< orphan*/  passwords; int /*<<< orphan*/  allowed_commands; } ;
typedef  TYPE_1__ user ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  listNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned long,char*) ; 
 unsigned long FUNC1 (char const*) ; 
 int FUNC2 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned long,int) ; 
 int FUNC8 (TYPE_1__*,char const*,int) ; 
 int C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  EBADMSG ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int HASH_PASSWORD_LEN ; 
 int USER_FLAG_ALLCOMMANDS ; 
 int USER_FLAG_ALLKEYS ; 
 int USER_FLAG_DISABLED ; 
 int USER_FLAG_ENABLED ; 
 int USER_FLAG_NOPASS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 
 char* FUNC18 (char const*,char) ; 
 scalar_t__ FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 char* FUNC21 (char const*) ; 

int FUNC22(user *u, const char *op, ssize_t oplen) {
    if (oplen == -1) oplen = FUNC19(op);
    if (!FUNC17(op,"on")) {
        u->flags |= USER_FLAG_ENABLED;
        u->flags &= ~USER_FLAG_DISABLED;
    } else if (!FUNC17(op,"off")) {
        u->flags |= USER_FLAG_DISABLED;
        u->flags &= ~USER_FLAG_ENABLED;
    } else if (!FUNC17(op,"allkeys") ||
               !FUNC17(op,"~*"))
    {
        u->flags |= USER_FLAG_ALLKEYS;
        FUNC11(u->patterns);
    } else if (!FUNC17(op,"resetkeys")) {
        u->flags &= ~USER_FLAG_ALLKEYS;
        FUNC11(u->patterns);
    } else if (!FUNC17(op,"allcommands") ||
               !FUNC17(op,"+@all"))
    {
        FUNC13(u->allowed_commands,255,sizeof(u->allowed_commands));
        u->flags |= USER_FLAG_ALLCOMMANDS;
        FUNC5(u);
    } else if (!FUNC17(op,"nocommands") ||
               !FUNC17(op,"-@all"))
    {
        FUNC13(u->allowed_commands,0,sizeof(u->allowed_commands));
        u->flags &= ~USER_FLAG_ALLCOMMANDS;
        FUNC5(u);
    } else if (!FUNC17(op,"nopass")) {
        u->flags |= USER_FLAG_NOPASS;
        FUNC11(u->passwords);
    } else if (!FUNC17(op,"resetpass")) {
        u->flags &= ~USER_FLAG_NOPASS;
        FUNC11(u->passwords);
    } else if (op[0] == '>' || op[0] == '#') {
        sds newpass;
        if (op[0] == '>') {
            newpass = FUNC3((unsigned char*)op+1,oplen-1);
        } else {
            if (oplen != HASH_PASSWORD_LEN + 1) {
                errno = EBADMSG;
                return C_ERR;
            }

            /* Password hashes can only be characters that represent
             * hexadecimal values, which are numbers and lowercase
             * characters 'a' through 'f'.
             */
            for(int i = 1; i < HASH_PASSWORD_LEN + 1; i++) {
                char c = op[i];
                if ((c < 'a' || c > 'f') && (c < '0' || c > '9')) {
                    errno = EBADMSG;
                    return C_ERR;
                }
            }
            newpass = FUNC15(op+1,oplen-1);
        }

        listNode *ln = FUNC12(u->passwords,newpass);
        /* Avoid re-adding the same password multiple times. */
        if (ln == NULL)
            FUNC9(u->passwords,newpass);
        else
            FUNC14(newpass);
        u->flags &= ~USER_FLAG_NOPASS;
    } else if (op[0] == '<' || op[0] == '!') {
        sds delpass;
        if (op[0] == '<') {
            delpass = FUNC3((unsigned char*)op+1,oplen-1);
        } else {
            if (oplen != HASH_PASSWORD_LEN + 1) {
                errno = EBADMSG;
                return C_ERR;
            }
            delpass = FUNC15(op+1,oplen-1);
        }
        listNode *ln = FUNC12(u->passwords,delpass);
        FUNC14(delpass);
        if (ln) {
            FUNC10(u->passwords,ln);
        } else {
            errno = ENODEV;
            return C_ERR;
        }
    } else if (op[0] == '~') {
        if (u->flags & USER_FLAG_ALLKEYS) {
            errno = EEXIST;
            return C_ERR;
        }
        sds newpat = FUNC15(op+1,oplen-1);
        listNode *ln = FUNC12(u->patterns,newpat);
        /* Avoid re-adding the same pattern multiple times. */
        if (ln == NULL)
            FUNC9(u->patterns,newpat);
        else
            FUNC14(newpat);
        u->flags &= ~USER_FLAG_ALLKEYS;
    } else if (op[0] == '+' && op[1] != '@') {
        if (FUNC18(op,'|') == NULL) {
            if (FUNC4(op+1) == NULL) {
                errno = ENOENT;
                return C_ERR;
            }
            unsigned long id = FUNC1(op+1);
            FUNC7(u,id,1);
            FUNC6(u,id);
        } else {
            /* Split the command and subcommand parts. */
            char *copy = FUNC21(op+1);
            char *sub = FUNC18(copy,'|');
            sub[0] = '\0';
            sub++;

            /* Check if the command exists. We can't check the
             * subcommand to see if it is valid. */
            if (FUNC4(copy) == NULL) {
                FUNC20(copy);
                errno = ENOENT;
                return C_ERR;
            }
            unsigned long id = FUNC1(copy);

            /* The subcommand cannot be empty, so things like DEBUG|
             * are syntax errors of course. */
            if (FUNC19(sub) == 0) {
                FUNC20(copy);
                errno = EINVAL;
                return C_ERR;
            }

            /* The command should not be set right now in the command
             * bitmap, because adding a subcommand of a fully added
             * command is probably an error on the user side. */
            if (FUNC2(u,id) == 1) {
                FUNC20(copy);
                errno = EBUSY;
                return C_ERR;
            }

            /* Add the subcommand to the list of valid ones. */
            FUNC0(u,id,sub);

            /* We have to clear the command bit so that we force the
             * subcommand check. */
            FUNC7(u,id,0);
            FUNC20(copy);
        }
    } else if (op[0] == '-' && op[1] != '@') {
        if (FUNC4(op+1) == NULL) {
            errno = ENOENT;
            return C_ERR;
        }
        unsigned long id = FUNC1(op+1);
        FUNC7(u,id,0);
        FUNC6(u,id);
    } else if ((op[0] == '+' || op[0] == '-') && op[1] == '@') {
        int bitval = op[0] == '+' ? 1 : 0;
        if (FUNC8(u,op+2,bitval) == C_ERR) {
            errno = ENOENT;
            return C_ERR;
        }
    } else if (!FUNC17(op,"reset")) {
        FUNC16(FUNC22(u,"resetpass",-1) == C_OK);
        FUNC16(FUNC22(u,"resetkeys",-1) == C_OK);
        FUNC16(FUNC22(u,"off",-1) == C_OK);
        FUNC16(FUNC22(u,"-@all",-1) == C_OK);
    } else {
        errno = EINVAL;
        return C_ERR;
    }
    return C_OK;
}