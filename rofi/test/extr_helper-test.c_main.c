
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ case_sensitive; } ;


 int EXIT_FAILURE ;
 scalar_t__ FALSE ;
 int LC_ALL ;
 int TASSERT (int) ;
 int TASSERTE (int,unsigned int) ;
 int TASSERTL (int ,int) ;
 scalar_t__ TRUE ;
 int cmd_set_arguments (int,char**) ;
 TYPE_1__ config ;
 int fprintf (int ,char*) ;
 int g_free (char*) ;
 scalar_t__ g_utf8_collate (char*,char*) ;
 int g_utf8_strlen (char*,int) ;
 scalar_t__ g_utf8_validate (char*,int,int *) ;
 char helper_parse_char (char*) ;
 char* helper_string_replace_if_exists (char*,char*,char*,char*,char*,char*,...) ;
 int levenshtein (char*,int ,char*,int ) ;
 int printf (char*,char*) ;
 char* rofi_force_utf8 (char*,int) ;
 char* rofi_latin_to_utf8_strdup (char*,int) ;
 int rofi_scorer_fuzzy_evaluate (char*,int,char*,int) ;
 int * setlocale (int ,char*) ;
 int stderr ;
 int strlen (char*) ;
 scalar_t__ utf8_strncmp (char*,char*,int) ;

int main ( int argc, char ** argv )
{
    cmd_set_arguments ( argc, argv );

    if ( setlocale ( LC_ALL, "" ) == ((void*)0) ) {
        fprintf ( stderr, "Failed to set locale.\n" );
        return EXIT_FAILURE;
    }





    TASSERT ( helper_parse_char ( "\\n" ) == '\n' );
    TASSERT ( helper_parse_char ( "\\a" ) == '\a' );
    TASSERT ( helper_parse_char ( "\\b" ) == '\b' );
    TASSERT ( helper_parse_char ( "\\t" ) == '\t' );
    TASSERT ( helper_parse_char ( "\\v" ) == '\v' );
    TASSERT ( helper_parse_char ( "\\f" ) == '\f' );
    TASSERT ( helper_parse_char ( "\\r" ) == '\r' );
    TASSERT ( helper_parse_char ( "\\\\" ) == '\\' );
    TASSERT ( helper_parse_char ( "\\0" ) == 0 );
    TASSERT ( helper_parse_char ( "\\x77" ) == 'w' );
    TASSERT ( helper_parse_char ( "\\x0A" ) == '\n' );





    TASSERT ( levenshtein ( "aap", g_utf8_strlen ( "aap", -1), "aap", g_utf8_strlen ( "aap", -1) ) == 0 );
    TASSERT ( levenshtein ( "aap", g_utf8_strlen ( "aap", -1), "aap ", g_utf8_strlen ( "aap ", -1) ) == 1 );
    TASSERT ( levenshtein ( "aap ", g_utf8_strlen ( "aap ", -1), "aap", g_utf8_strlen ( "aap", -1) ) == 1 );
    TASSERTE ( levenshtein ( "aap", g_utf8_strlen ( "aap", -1), "aap noot", g_utf8_strlen ( "aap noot", -1) ), 5u );
    TASSERTE ( levenshtein ( "aap", g_utf8_strlen ( "aap", -1), "noot aap", g_utf8_strlen ( "noot aap", -1) ), 5u );
    TASSERTE ( levenshtein ( "aap", g_utf8_strlen ( "aap", -1), "noot aap mies", g_utf8_strlen ( "noot aap mies", -1) ), 10u );
    TASSERTE ( levenshtein ( "noot aap mies", g_utf8_strlen ( "noot aap mies", -1), "aap", g_utf8_strlen ( "aap", -1) ), 10u );
    TASSERTE ( levenshtein ( "otp", g_utf8_strlen ( "otp", -1), "noot aap", g_utf8_strlen ( "noot aap", -1) ), 5u );



    {
        char *str = rofi_latin_to_utf8_strdup ( "\xA1\xB5", 2 );
        TASSERT ( g_utf8_collate ( str, "¡µ" ) == 0 );
        g_free ( str );
    }

    {
        char *str = rofi_force_utf8 ( "Valid utf8", 10 );
        TASSERT ( g_utf8_collate ( str, "Valid utf8" ) == 0 );
        g_free ( str );
        char in[] = "Valid utf8 until \xc3\x28 we continue here";
        TASSERT ( g_utf8_validate ( in, -1, ((void*)0) ) == FALSE );
        str = rofi_force_utf8 ( in, strlen ( in ) );
        TASSERT ( g_utf8_validate ( str, -1, ((void*)0) ) == TRUE );
        TASSERT ( g_utf8_collate ( str, "Valid utf8 until �( we continue here" ) == 0 );
        g_free ( str );
    }
    {
        TASSERT ( utf8_strncmp ( "aapno", "aap€",3) == 0 );
        TASSERT ( utf8_strncmp ( "aapno", "aap€",4) != 0 );
        TASSERT ( utf8_strncmp ( "aapno", "a",4) != 0 );
        TASSERT ( utf8_strncmp ( "a", "aap€",4) != 0 );


    }
    {
        TASSERTL ( rofi_scorer_fuzzy_evaluate ("aap noot mies", 12 , "aap noot mies", 12), -605);
        TASSERTL ( rofi_scorer_fuzzy_evaluate ("anm", 3, "aap noot mies", 12), -155);
        TASSERTL ( rofi_scorer_fuzzy_evaluate ("blu", 3, "aap noot mies", 12), 1073741824);
        config.case_sensitive = TRUE;
        TASSERTL ( rofi_scorer_fuzzy_evaluate ("Anm", 3, "aap noot mies", 12), 1073741754);
        config.case_sensitive = FALSE;
        TASSERTL ( rofi_scorer_fuzzy_evaluate ("Anm", 3, "aap noot mies", 12), -155);
        TASSERTL ( rofi_scorer_fuzzy_evaluate ("aap noot mies", 12,"Anm", 3 ), 1073741824);

    }


    char *a;
    a = helper_string_replace_if_exists ( "{terminal} [-t {title} blub ]-e {cmd}", "{cmd}", "aap", "{title}", "some title", "{terminal}", "rofi-sensible-terminal", ((void*)0));
    printf("%s\n",a);
    TASSERT ( g_utf8_collate ( a, "rofi-sensible-terminal -t some title blub -e aap") == 0);
    g_free(a);
    a = helper_string_replace_if_exists ( "{terminal} [-t {title} blub ]-e {cmd}", "{cmd}", "aap", "{terminal}", "rofi-sensible-terminal", ((void*)0));
    printf("%s\n",a);
    TASSERT ( g_utf8_collate ( a, "rofi-sensible-terminal -e aap") == 0);
    g_free(a);
    a = helper_string_replace_if_exists ( "{name} [<span weight='light' size='small'><i>({category})</i></span>]", "{name}", "Librecad", "{category}", "Desktop app", "{terminal}", "rofi-sensible-terminal", ((void*)0) );
    printf("%s\n",a);
    TASSERT ( g_utf8_collate ( a, "Librecad <span weight='light' size='small'><i>(Desktop app)</i></span>") == 0);
    g_free(a);
    a = helper_string_replace_if_exists ( "{name}[ <span weight='light' size='small'><i>({category})</i></span>]", "{name}", "Librecad", "{terminal}", "rofi-sensible-terminal", ((void*)0) );
    TASSERT ( g_utf8_collate ( a, "Librecad") == 0);
    g_free(a);
    a = helper_string_replace_if_exists ( "{terminal} [{title} blub ]-e {cmd}", "{cmd}", "aap", "{title}", "some title", "{terminal}", "rofi-sensible-terminal", ((void*)0));
    printf("%s\n",a);
    TASSERT ( g_utf8_collate ( a, "rofi-sensible-terminal some title blub -e aap") == 0);
    g_free(a);
    a = helper_string_replace_if_exists ( "{terminal} [{title} blub ]-e {cmd}",
            "{cmd}", "aap",
            "{title}", ((void*)0),
            "{terminal}", "rofi-sensible-terminal",
            ((void*)0));
    printf("%s\n",a);
    TASSERT ( g_utf8_collate ( a, "rofi-sensible-terminal -e aap") == 0);
    g_free(a);
}
