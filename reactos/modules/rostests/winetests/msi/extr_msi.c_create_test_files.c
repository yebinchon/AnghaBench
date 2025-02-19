
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateDirectoryA (char*,int *) ;
 int DeleteFileA (char*) ;
 int MEDIA_SIZE ;
 int create_cab_file (char*,int ,char*) ;
 int create_file (char*,char*,int) ;

__attribute__((used)) static void create_test_files(void)
{
    CreateDirectoryA("msitest", ((void*)0));
    create_file("msitest\\one.txt", "msitest\\one.txt", 100);
    CreateDirectoryA("msitest\\first", ((void*)0));
    create_file("msitest\\first\\two.txt", "msitest\\first\\two.txt", 100);
    CreateDirectoryA("msitest\\second", ((void*)0));
    create_file("msitest\\second\\three.txt", "msitest\\second\\three.txt", 100);

    create_file("four.txt", "four.txt", 100);
    create_file("five.txt", "five.txt", 100);
    create_cab_file("msitest.cab", MEDIA_SIZE, "four.txt\0five.txt\0");

    create_file("msitest\\filename", "msitest\\filename", 100);
    create_file("msitest\\service.exe", "msitest\\service.exe", 100);

    DeleteFileA("four.txt");
    DeleteFileA("five.txt");
}
