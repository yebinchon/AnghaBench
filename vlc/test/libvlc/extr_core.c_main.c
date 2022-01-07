
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_audio_output () ;
 int test_audiovideofilterlists (int ,int ) ;
 int test_core (int ,int ) ;
 int test_defaults_args ;
 int test_defaults_nargs ;
 int test_init () ;

int main (void)
{
    test_init();

    test_core (test_defaults_args, test_defaults_nargs);
    test_audiovideofilterlists (test_defaults_args, test_defaults_nargs);
    test_audio_output ();

    return 0;
}
