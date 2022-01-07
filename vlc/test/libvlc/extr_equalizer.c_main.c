
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_defaults_args ;
 int test_defaults_nargs ;
 int test_equalizer (int ,int ) ;
 int test_init () ;

int main (void)
{
    test_init();

    test_equalizer (test_defaults_args, test_defaults_nargs);

    return 0;
}
