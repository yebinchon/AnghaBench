
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 scalar_t__ CreateDirectoryA (char*,int *) ;
 scalar_t__ ERROR_ALREADY_EXISTS ;
 scalar_t__ FALSE ;
 int GetCurrentDirectoryA (int,char*) ;
 scalar_t__ GetLastError () ;
 int GetTempPathA (int,char*) ;
 int MAX_PATH ;
 int RemoveDirectoryA (char*) ;
 int SetCurrentDirectoryA (char*) ;
 scalar_t__ TRUE ;
 char* _fullpath (char*,char*,int) ;
 int free (char*) ;
 int memcpy (char*,char*,int) ;
 int ok (int,char*,...) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void test_fullpath(void)
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
    GetCurrentDirectoryA(MAX_PATH, prevpath);
    GetTempPathA(MAX_PATH,tmppath);
    strcpy(level1,tmppath);
    strcat(level1,"msvcrt-test\\");

    rc = CreateDirectoryA(level1,((void*)0));
    if (!rc && GetLastError()==ERROR_ALREADY_EXISTS)
        free1=FALSE;

    strcpy(level2,level1);
    strcat(level2,"nextlevel\\");
    rc = CreateDirectoryA(level2,((void*)0));
    if (!rc && GetLastError()==ERROR_ALREADY_EXISTS)
        free2=FALSE;
    SetCurrentDirectoryA(level2);

    ok(_fullpath(full,"test", MAX_PATH)!=((void*)0),"_fullpath failed\n");
    strcpy(teststring,level2);
    strcat(teststring,"test");
    ok(strcmp(full,teststring)==0,"Invalid Path returned %s\n",full);
    ok(_fullpath(full,"\\test", MAX_PATH)!=((void*)0),"_fullpath failed\n");
    memcpy(teststring,level2,3);
    teststring[3]=0;
    strcat(teststring,"test");
    ok(strcmp(full,teststring)==0,"Invalid Path returned %s\n",full);
    ok(_fullpath(full,"..\\test", MAX_PATH)!=((void*)0),"_fullpath failed\n");
    strcpy(teststring,level1);
    strcat(teststring,"test");
    ok(strcmp(full,teststring)==0,"Invalid Path returned %s\n",full);
    ok(_fullpath(full,"..\\test", 10)==((void*)0),"_fullpath failed to generate error\n");

    freeme = _fullpath(((void*)0),"test", 0);
    ok(freeme!=((void*)0),"No path returned\n");
    strcpy(teststring,level2);
    strcat(teststring,"test");
    ok(strcmp(freeme,teststring)==0,"Invalid Path returned %s\n",freeme);
    free(freeme);

    SetCurrentDirectoryA(prevpath);
    if (free2)
        RemoveDirectoryA(level2);
    if (free1)
        RemoveDirectoryA(level1);
}
