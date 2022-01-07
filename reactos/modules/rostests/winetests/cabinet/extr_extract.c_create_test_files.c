
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CURR_DIR ;
 int CreateDirectoryA (char*,int *) ;
 int GetCurrentDirectoryA (int ,char*) ;
 int MAX_PATH ;
 int createTestFile (char*) ;
 int lstrlenA (char*) ;

__attribute__((used)) static void create_test_files(void)
{
    int len;

    GetCurrentDirectoryA(MAX_PATH, CURR_DIR);
    len = lstrlenA(CURR_DIR);

    if(len && (CURR_DIR[len-1] == '\\'))
        CURR_DIR[len-1] = 0;

    createTestFile("a.txt");
    createTestFile("b.txt");
    CreateDirectoryA("testdir", ((void*)0));
    createTestFile("testdir\\c.txt");
    createTestFile("testdir\\d.txt");
    CreateDirectoryA("dest", ((void*)0));
}
