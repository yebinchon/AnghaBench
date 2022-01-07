
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char CHAR ;


 int ERROR_ALREADY_EXISTS ;
 int ERROR_SUCCESS ;
 int MAX_PATH ;
 int SHCreateDirectoryExA (int *,char*,int *) ;
 int file_exists (char*) ;
 int ok (int,char*,...) ;
 int set_curr_dir_path (char*,char*) ;

__attribute__((used)) static void test_sh_create_dir(void)
{
    CHAR path[MAX_PATH];
    int ret;

    set_curr_dir_path(path, "testdir2\\test4.txt\0");
    ret = SHCreateDirectoryExA(((void*)0), path, ((void*)0));
    ok(ERROR_SUCCESS == ret, "SHCreateDirectoryEx failed to create directory recursively, ret = %d\n", ret);
    ok(file_exists("testdir2"), "The first directory is not created\n");
    ok(file_exists("testdir2\\test4.txt"), "The second directory is not created\n");

    ret = SHCreateDirectoryExA(((void*)0), path, ((void*)0));
    ok(ERROR_ALREADY_EXISTS == ret, "SHCreateDirectoryEx should fail to create existing directory, ret = %d\n", ret);

    ret = SHCreateDirectoryExA(((void*)0), "c:\\testdir3", ((void*)0));
    ok(ERROR_SUCCESS == ret, "SHCreateDirectoryEx failed to create directory, ret = %d\n", ret);
    ok(file_exists("c:\\testdir3"), "The directory is not created\n");
}
