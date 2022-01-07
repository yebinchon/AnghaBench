
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateDirectoryA (char*,int *) ;
 int createTestFile (char*) ;

__attribute__((used)) static void create_test_files(void)
{
    createTestFile("a.txt");
    createTestFile("b.txt");
    CreateDirectoryA("testdir", ((void*)0));
    createTestFile("testdir\\c.txt");
    createTestFile("testdir\\d.txt");
    CreateDirectoryA("dest", ((void*)0));
}
