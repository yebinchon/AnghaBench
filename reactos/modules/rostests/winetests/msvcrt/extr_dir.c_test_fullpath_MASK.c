#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ALREADY_EXISTS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ TRUE ; 
 char* FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static void FUNC13(void)
{
    char full[MAX_PATH];
    char tmppath[MAX_PATH];
    char prevpath[MAX_PATH];
    char level1[MAX_PATH];
    char level2[MAX_PATH];
    char teststring[MAX_PATH];
    char *freeme;
    BOOL rc,free1,free2;

    free1=free2=TRUE;
    FUNC1(MAX_PATH, prevpath);
    FUNC3(MAX_PATH,tmppath);
    FUNC12(level1,tmppath);
    FUNC10(level1,"msvcrt-test\\");

    rc = FUNC0(level1,NULL);
    if (!rc && FUNC2()==ERROR_ALREADY_EXISTS)
        free1=FALSE;

    FUNC12(level2,level1);
    FUNC10(level2,"nextlevel\\");
    rc = FUNC0(level2,NULL);
    if (!rc && FUNC2()==ERROR_ALREADY_EXISTS)
        free2=FALSE;
    FUNC5(level2);

    FUNC9(FUNC6(full,"test", MAX_PATH)!=NULL,"_fullpath failed\n");
    FUNC12(teststring,level2);
    FUNC10(teststring,"test");
    FUNC9(FUNC11(full,teststring)==0,"Invalid Path returned %s\n",full);
    FUNC9(FUNC6(full,"\\test", MAX_PATH)!=NULL,"_fullpath failed\n");
    FUNC8(teststring,level2,3);
    teststring[3]=0;
    FUNC10(teststring,"test");
    FUNC9(FUNC11(full,teststring)==0,"Invalid Path returned %s\n",full);
    FUNC9(FUNC6(full,"..\\test", MAX_PATH)!=NULL,"_fullpath failed\n");
    FUNC12(teststring,level1);
    FUNC10(teststring,"test");
    FUNC9(FUNC11(full,teststring)==0,"Invalid Path returned %s\n",full);
    FUNC9(FUNC6(full,"..\\test", 10)==NULL,"_fullpath failed to generate error\n");

    freeme = FUNC6(NULL,"test", 0);
    FUNC9(freeme!=NULL,"No path returned\n");
    FUNC12(teststring,level2);
    FUNC10(teststring,"test");
    FUNC9(FUNC11(freeme,teststring)==0,"Invalid Path returned %s\n",freeme);
    FUNC7(freeme);

    FUNC5(prevpath);
    if (free2)
        FUNC4(level2);
    if (free1)
        FUNC4(level1);
}