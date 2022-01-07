
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ GetTempPathA (int,char*) ;
 int MAX_PATH ;
 int __getmainargs (int*,char***,char***,int,int*) ;
 int _unlink (char*) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int ok (int,char*,...) ;
 int* p___p___argc () ;
 char*** p___p___argv () ;
 int skip (char*) ;
 int sprintf (char*,char*,char*) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void test___getmainargs(void)
{
    int argc, new_argc, mode;
    char **argv, **new_argv, **envp;
    char tmppath[MAX_PATH], filepath[MAX_PATH];
    FILE *f;

    ok(GetTempPathA(MAX_PATH, tmppath) != 0, "GetTempPath failed\n");

    mode = 0;
    __getmainargs(&argc, &argv, &envp, 0, &mode);
    ok(argc == 4, "argc = %d\n", argc);
    ok(!strcmp(argv[1], "data"), "argv[1] = %s\n", argv[1]);
    sprintf(filepath, "%s*\\*", tmppath);
    ok(!strcmp(argv[2], filepath), "argv[2] = %s\n", argv[2]);
    sprintf(filepath, "%swine_test/*", tmppath);
    ok(!strcmp(argv[3], filepath), "argv[3] = %s\n", argv[3]);
    ok(!argv[4], "argv[4] != NULL\n");

    if(p___p___argc && p___p___argv) {
        new_argc = *p___p___argc();
        new_argv = *p___p___argv();
        ok(new_argc == 4, "*__p___argc() = %d\n", new_argc);
        ok(new_argv == argv, "*__p___argv() = %p, expected %p\n", new_argv, argv);
    }
    else skip("__p___argc or __p___argv is not available\n");

    mode = 0;
    __getmainargs(&argc, &argv, &envp, 1, &mode);
    ok(argc == 5, "argc = %d\n", argc);
    ok(!strcmp(argv[1], "data"), "argv[1] = %s\n", argv[1]);
    sprintf(filepath, "%s*\\*", tmppath);
    ok(!strcmp(argv[2], filepath), "argv[2] = %s\n", argv[2]);
    sprintf(filepath, "%swine_test/a", tmppath);
    if(argv[3][strlen(argv[3])-1] == 'a') {
        ok(!strcmp(argv[3], filepath), "argv[3] = %s\n", argv[3]);
        sprintf(filepath, "%swine_test/test", tmppath);
        ok(!strcmp(argv[4], filepath), "argv[4] = %s\n", argv[4]);
    }else {
        ok(!strcmp(argv[4], filepath), "argv[4] = %s\n", argv[4]);
        sprintf(filepath, "%swine_test/test", tmppath);
        ok(!strcmp(argv[3], filepath), "argv[3] = %s\n", argv[3]);
    }
    ok(!argv[5], "argv[5] != NULL\n");

    if(p___p___argc && p___p___argv) {
        new_argc = *p___p___argc();
        new_argv = *p___p___argv();
        ok(new_argc == argc, "*__p___argc() = %d, expected %d\n", new_argc, argc);
        ok(new_argv == argv, "*__p___argv() = %p, expected %p\n", new_argv, argv);
    }

    sprintf(filepath, "%swine_test/b", tmppath);
    f = fopen(filepath, "w");
    ok(f != ((void*)0), "fopen(%s) failed: %d\n", filepath, errno);
    fclose(f);
    mode = 0;
    __getmainargs(&new_argc, &new_argv, &envp, 1, &mode);
    ok(new_argc == argc+1, "new_argc = %d, expected %d\n", new_argc, argc+1);
    _unlink(filepath);
}
