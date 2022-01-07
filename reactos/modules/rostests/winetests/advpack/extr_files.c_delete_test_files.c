
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteFileA (char*) ;
 int RemoveDirectoryA (char*) ;

__attribute__((used)) static void delete_test_files(void)
{
    DeleteFileA("a.txt");
    DeleteFileA("b.txt");
    DeleteFileA("testdir\\c.txt");
    DeleteFileA("testdir\\d.txt");
    RemoveDirectoryA("testdir");
    RemoveDirectoryA("dest");

    DeleteFileA("extract.cab");
}
