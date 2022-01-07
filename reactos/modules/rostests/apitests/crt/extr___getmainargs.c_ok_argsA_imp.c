
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __getmainargs (int*,char***,char***,int ,int*) ;
 int ** __p___argv () ;
 char const** __p__acmdln () ;
 int winetest_ok (int,char*,int,int) ;
 int winetest_ok_str (char*,char const*) ;

void
ok_argsA_imp(const char* input_args, const char* arg1, const char* arg2, const char* arg3)
{
    int argc = 0, mode = 0;
    int expect_count = arg3 == ((void*)0) ? (arg2 == ((void*)0) ? 2 : 3) : 4;
    char** argv, **env;


    *__p___argv() = ((void*)0);
    *__p__acmdln() = input_args;


    __getmainargs(&argc, &argv, &env, 0, &mode);

    winetest_ok(argc == expect_count, "Wrong value for argc, expected: %d, got: %d\n", expect_count, argc);
    if(argc != expect_count)
        return;

    winetest_ok_str(argv[0], "test.exe");
    winetest_ok_str(argv[1], arg1);
    if (expect_count > 2)
    {
        winetest_ok_str(argv[2], arg2);
        if (expect_count > 3)
            winetest_ok_str(argv[3], arg3);
    }
}
