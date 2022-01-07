
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ _unlink (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ mkdir (char*) ;
 int ok (int,char*) ;
 int rmdir (char*) ;
 int unlink (char*) ;

__attribute__((used)) static void test_unlink(void)
{
    FILE* file;
    ok(mkdir("test_unlink") == 0, "unable to create test dir\n");
    file = fopen("test_unlink\\empty", "w");
    ok(file != ((void*)0), "unable to create test file\n");
    if(file)
      fclose(file);
    ok(_unlink("test_unlink") != 0, "unlinking a non-empty directory must fail\n");
    unlink("test_unlink\\empty");
    rmdir("test_unlink");
}
