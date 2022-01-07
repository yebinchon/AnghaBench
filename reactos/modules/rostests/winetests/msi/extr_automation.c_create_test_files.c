
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateDirectoryA (char*,int *) ;
 int create_file (char*,int) ;

__attribute__((used)) static void create_test_files(void)
{
    CreateDirectoryA("msitest", ((void*)0));
    create_file("msitest\\one.txt", 100);
    CreateDirectoryA("msitest\\first", ((void*)0));
    create_file("msitest\\first\\two.txt", 100);
    CreateDirectoryA("msitest\\second", ((void*)0));
    create_file("msitest\\second\\three.txt", 100);
    CreateDirectoryA("msitest\\cabout",((void*)0));
    create_file("msitest\\cabout\\four.txt", 100);
    CreateDirectoryA("msitest\\cabout\\new",((void*)0));
    create_file("msitest\\cabout\\new\\five.txt", 100);
    create_file("msitest\\filename", 100);
}
