
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateDirectoryA (char*,int *) ;
 int CreateTestFile (char*) ;

__attribute__((used)) static void CreateFilesFolders(void)
{
    CreateDirectoryA(".\\testdir", ((void*)0));
    CreateDirectoryA(".\\testdir\\test.txt", ((void*)0));
    CreateTestFile (".\\testdir\\test1.txt ");
    CreateTestFile (".\\testdir\\test2.txt ");
    CreateTestFile (".\\testdir\\test3.txt ");
    CreateDirectoryA(".\\testdir\\testdir2 ", ((void*)0));
    CreateDirectoryA(".\\testdir\\testdir2\\subdir", ((void*)0));
}
