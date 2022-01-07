
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int LC_ALL ;
 int TASSERT (int) ;
 int cmd_set_arguments (int,char**) ;
 int fprintf (int ,char*) ;
 int g_free (char*) ;
 char* g_get_home_dir () ;
 char* rofi_expand_path (char*) ;
 int * setlocale (int ,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char const*) ;

int main ( int argc, char ** argv )
{
    cmd_set_arguments ( argc, argv );

    if ( setlocale ( LC_ALL, "" ) == ((void*)0) ) {
        fprintf ( stderr, "Failed to set locale.\n" );
        return EXIT_FAILURE;
    }





    char *str = rofi_expand_path ( "/" );
    TASSERT ( strcmp ( str, "/" ) == 0 );
    g_free ( str );

    str = rofi_expand_path ( "../AUTHORS" );
    TASSERT ( strcmp ( str, "../AUTHORS" ) == 0 );
    g_free ( str );

    str = rofi_expand_path ( "/bin/false" );
    TASSERT ( strcmp ( str, "/bin/false" ) == 0 );
    g_free ( str );

    str = rofi_expand_path ( "~/" );
    const char *hd = g_get_home_dir ();
    TASSERT ( strcmp ( str, hd ) == 0 );
    g_free ( str );
    str = rofi_expand_path ( "~root/" );
    TASSERT ( str[0] == '/' );
    g_free ( str );
}
