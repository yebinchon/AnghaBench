
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Suite ;
typedef int SRunner ;


 int CK_NORMAL ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LC_ALL ;
 int cmd_set_arguments (int,char**) ;
 int fprintf (int ,char*) ;
 int * setlocale (int ,char*) ;
 int * srunner_create (int *) ;
 int srunner_free (int *) ;
 int srunner_ntests_failed (int *) ;
 int srunner_run_all (int *,int ) ;
 int stderr ;
 int * theme_parser_suite () ;

int main ( int argc, char ** argv )
{
    cmd_set_arguments ( argc, argv );

    if ( setlocale ( LC_ALL, "C" ) == ((void*)0) ) {
        fprintf ( stderr, "Failed to set locale.\n" );
        return EXIT_FAILURE;
    }


    Suite *s;
    SRunner *sr;

    s = theme_parser_suite();
    sr = srunner_create(s);

    srunner_run_all(sr, CK_NORMAL);
    int number_failed = srunner_ntests_failed(sr);
    srunner_free(sr);

    return (number_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}
