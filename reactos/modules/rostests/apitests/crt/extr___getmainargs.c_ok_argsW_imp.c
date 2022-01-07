
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int ** __p___wargv () ;
 char const** __p__wcmdln () ;
 int __wgetmainargs (int*,char***,char***,int ,int*) ;
 int winetest_ok (int,char*,int,int) ;
 int winetest_ok_wstr (char*,char const*) ;

void
ok_argsW_imp(const wchar_t* input_args, const wchar_t* arg1, const wchar_t* arg2, const wchar_t* arg3)
{
    int argc = 0, mode = 0;
    int expect_count = arg3 == ((void*)0) ? (arg2 == ((void*)0) ? 2 : 3) : 4;
    wchar_t** argv, **env;


    *__p___wargv() = ((void*)0);
    *__p__wcmdln() = input_args;


    __wgetmainargs(&argc, &argv, &env, 0, &mode);

    winetest_ok(argc == expect_count, "Wrong value for argc, expected: %d, got: %d\n", expect_count, argc);
    if(argc != expect_count)
        return;

    winetest_ok_wstr(argv[0], L"test.exe");
    winetest_ok_wstr(argv[1], arg1);
    if (expect_count > 2)
    {
        winetest_ok_wstr(argv[2], arg2);
        if (expect_count > 3)
            winetest_ok_wstr(argv[3], arg3);
    }
}
