
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 int FALSE ;
 int MAX_PATH ;
 char* getFolderName (int) ;
 int ok (int,char*,char*) ;
 scalar_t__ pSHGetSpecialFolderPathA (int *,char*,int,int ) ;
 int printf (char*,char*,char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_SHGetSpecialFolderPath(BOOL optional, int folder)
{
    char path[MAX_PATH];
    BOOL ret;

    if (!pSHGetSpecialFolderPathA) return;

    ret = pSHGetSpecialFolderPathA(((void*)0), path, folder, FALSE);
    if (ret && winetest_interactive)
        printf("%s: %s\n", getFolderName(folder), path);
    ok(ret || optional,
     "SHGetSpecialFolderPathA(NULL, path, %s, FALSE) failed\n",
     getFolderName(folder));
}
