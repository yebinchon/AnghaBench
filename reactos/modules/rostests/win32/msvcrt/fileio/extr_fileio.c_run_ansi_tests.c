
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_files (int,char*) ;

int run_ansi_tests(int test_num)
{
    return test_files(test_num, "ANSI");
}
