
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

__attribute__((used)) static void init_shfo_tests(void)
{
    int len;

    GetCurrentDirectoryA(MAX_PATH, CURR_DIR);
    len = lstrlenA(CURR_DIR);

    if(len && (CURR_DIR[len-1] == '\\'))
        CURR_DIR[len-1] = 0;

    createTestFile("test1.txt");
    createTestFile("test2.txt");
    createTestFile("test3.txt");
    createTestFile("test_5.txt");
    CreateDirectoryA("test4.txt", ((void*)0));
    CreateDirectoryA("testdir2", ((void*)0));
    CreateDirectoryA("testdir2\\nested", ((void*)0));
    createTestFile("testdir2\\one.txt");
    createTestFile("testdir2\\nested\\two.txt");
}
