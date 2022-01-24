#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ user ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/ * sds ;
struct TYPE_9__ {TYPE_1__* data; } ;
typedef  TYPE_2__ raxIterator ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  Users ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC21(const char *filename) {
    sds acl = FUNC13();
    int fd = -1;
    sds tmpfilename = NULL;
    int retval = C_ERR;

    /* Let's generate an SDS string containing the new version of the
     * ACL file. */
    raxIterator ri;
    FUNC7(&ri,Users);
    FUNC6(&ri,"^",NULL,0);
    while(FUNC5(&ri)) {
        user *u = ri.data;
        /* Return information in the configuration file format. */
        sds user = FUNC16("user ");
        user = FUNC12(user,u->name);
        user = FUNC11(user," ",1);
        sds descr = FUNC0(u);
        user = FUNC12(user,descr);
        FUNC14(descr);
        acl = FUNC12(acl,user);
        acl = FUNC11(acl,"\n",1);
        FUNC14(user);
    }
    FUNC8(&ri);

    /* Create a temp file with the new content. */
    tmpfilename = FUNC16(filename);
    tmpfilename = FUNC10(tmpfilename,".tmp-%i-%I",
        (int)FUNC2(),(int)FUNC3());
    if ((fd = FUNC4(tmpfilename,O_WRONLY|O_CREAT,0644)) == -1) {
        FUNC17(LL_WARNING,"Opening temp ACL file for ACL SAVE: %s",
            FUNC18(errno));
        goto cleanup;
    }

    /* Write it. */
    if (FUNC20(fd,acl,FUNC15(acl)) != (ssize_t)FUNC15(acl)) {
        FUNC17(LL_WARNING,"Writing ACL file for ACL SAVE: %s",
            FUNC18(errno));
        goto cleanup;
    }
    FUNC1(fd); fd = -1;

    /* Let's replace the new file with the old one. */
    if (FUNC9(tmpfilename,filename) == -1) {
        FUNC17(LL_WARNING,"Renaming ACL file for ACL SAVE: %s",
            FUNC18(errno));
        goto cleanup;
    }
    FUNC14(tmpfilename); tmpfilename = NULL;
    retval = C_OK; /* If we reached this point, everything is fine. */

cleanup:
    if (fd != -1) FUNC1(fd);
    if (tmpfilename) FUNC19(tmpfilename);
    FUNC14(tmpfilename);
    FUNC14(acl);
    return retval;
}