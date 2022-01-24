#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user ;
typedef  char* sds ;
typedef  int /*<<< orphan*/  rax ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  acl_filename; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 char* FUNC8 () ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/ * DefaultUser ; 
 int /*<<< orphan*/ * Users ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC15 (char*,char*) ; 
 char* FUNC16 (char*,char*,char const*,int,...) ; 
 char* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char**,int) ; 
 scalar_t__ FUNC20 (char*) ; 
 char** FUNC21 (char*,int*) ; 
 char** FUNC22 (char*,int /*<<< orphan*/ ,char*,int,int*) ; 
 char* FUNC23 (char*,char*) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 scalar_t__ FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 

sds FUNC28(const char *filename) {
    FILE *fp;
    char buf[1024];

    /* Open the ACL file. */
    if ((fp = FUNC11(filename,"r")) == NULL) {
        sds errors = FUNC16(FUNC17(),
            "Error loading ACLs, opening file '%s': %s",
            filename, FUNC26(errno));
        return errors;
    }

    /* Load the whole file as a single string in memory. */
    sds acls = FUNC17();
    while(FUNC10(buf,sizeof(buf),fp) != NULL)
        acls = FUNC15(acls,buf);
    FUNC9(fp);

    /* Split the file into lines and attempt to load each line. */
    int totlines;
    sds *lines, errors = FUNC17();
    lines = FUNC22(acls,FUNC27(acls),"\n",1,&totlines);
    FUNC18(acls);

    /* We need a fake user to validate the rules before making changes
     * to the real user mentioned in the ACL line. */
    user *fakeuser = FUNC1();

    /* We do all the loading in a fresh instance of the Users radix tree,
     * so if there are errors loading the ACL file we can rollback to the
     * old version. */
    rax *old_users = Users;
    user *old_default_user = DefaultUser;
    Users = FUNC13();
    FUNC6();

    /* Load each line of the file. */
    for (int i = 0; i < totlines; i++) {
        sds *argv;
        int argc;
        int linenum = i+1;

        lines[i] = FUNC23(lines[i]," \t\r\n");

        /* Skip blank lines */
        if (lines[i][0] == '\0') continue;

        /* Split into arguments */
        argv = FUNC21(lines[i],&argc);
        if (argv == NULL) {
            errors = FUNC16(errors,
                     "%s:%d: unbalanced quotes in acl line. ",
                     server.acl_filename, linenum);
            continue;
        }

        /* Skip this line if the resulting command vector is empty. */
        if (argc == 0) {
            FUNC19(argv,argc);
            continue;
        }

        /* The line should start with the "user" keyword. */
        if (FUNC25(argv[0],"user") || argc < 2) {
            errors = FUNC16(errors,
                     "%s:%d should start with user keyword followed "
                     "by the username. ", server.acl_filename,
                     linenum);
            FUNC19(argv,argc);
            continue;
        }

        /* Try to process the line using the fake user to validate iif
         * the rules are able to apply cleanly. */
        FUNC7(fakeuser,"reset",-1);
        int j;
        for (j = 2; j < argc; j++) {
            if (FUNC7(fakeuser,argv[j],FUNC20(argv[j])) != C_OK) {
                char *errmsg = FUNC8();
                errors = FUNC16(errors,
                         "%s:%d: %s. ",
                         server.acl_filename, linenum, errmsg);
                continue;
            }
        }

        /* Apply the rule to the new users set only if so far there
         * are no errors, otherwise it's useless since we are going
         * to discard the new users set anyway. */
        if (FUNC20(errors) != 0) {
            FUNC19(argv,argc);
            continue;
        }

        /* We can finally lookup the user and apply the rule. If the
         * user already exists we always reset it to start. */
        user *u = FUNC2(argv[1],FUNC20(argv[1]));
        if (!u) {
            u = FUNC5(argv[1],FUNC20(argv[1]));
            FUNC24(u != NULL);
            FUNC7(u,"reset",-1);
        }

        /* Note that the same rules already applied to the fake user, so
         * we just assert that everything goes well: it should. */
        for (j = 2; j < argc; j++)
            FUNC24(FUNC7(u,argv[j],FUNC20(argv[j])) == C_OK);

        FUNC19(argv,argc);
    }

    FUNC3(fakeuser);
    FUNC19(lines,totlines);
    DefaultUser = old_default_user; /* This pointer must never change. */

    /* Check if we found errors and react accordingly. */
    if (FUNC20(errors) == 0) {
        /* The default user pointer is referenced in different places: instead
         * of replacing such occurrences it is much simpler to copy the new
         * default user configuration in the old one. */
        user *new = FUNC5("default",7);
        FUNC24(new != NULL);
        FUNC0(DefaultUser,new);
        FUNC3(new);
        FUNC12(Users,(unsigned char*)"default",7,DefaultUser,NULL);
        FUNC14(old_users,(unsigned char*)"default",7,NULL);
        FUNC4(old_users);
        FUNC18(errors);
        return NULL;
    } else {
        FUNC4(Users);
        Users = old_users;
        errors = FUNC15(errors,"WARNING: ACL errors detected, no change to the previously active ACL rules was performed");
        return errors;
    }
}