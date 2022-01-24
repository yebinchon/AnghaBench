#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ case_sensitive; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 char FUNC9 (char*) ; 
 char* FUNC10 (char*,char*,char*,char*,char*,char*,...) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 char* FUNC13 (char*,int) ; 
 char* FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC17 (char*) ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 

int FUNC19 ( int argc, char ** argv )
{
    FUNC3 ( argc, argv );

    if ( FUNC16 ( LC_ALL, "" ) == NULL ) {
        FUNC4 ( stderr, "Failed to set locale.\n" );
        return EXIT_FAILURE;
    }

    /**
     * Char function
     */

    FUNC0 ( FUNC9 ( "\\n" ) == '\n' );
    FUNC0 ( FUNC9 ( "\\a" ) == '\a' );
    FUNC0 ( FUNC9 ( "\\b" ) == '\b' );
    FUNC0 ( FUNC9 ( "\\t" ) == '\t' );
    FUNC0 ( FUNC9 ( "\\v" ) == '\v' );
    FUNC0 ( FUNC9 ( "\\f" ) == '\f' );
    FUNC0 ( FUNC9 ( "\\r" ) == '\r' );
    FUNC0 ( FUNC9 ( "\\\\" ) == '\\' );
    FUNC0 ( FUNC9 ( "\\0" ) == 0 );
    FUNC0 ( FUNC9 ( "\\x77" ) == 'w' );
    FUNC0 ( FUNC9 ( "\\x0A" ) == '\n' );

    /**
     * tokenize
     */

    FUNC0 ( FUNC11 ( "aap", FUNC7 ( "aap", -1), "aap", FUNC7 ( "aap", -1) ) == 0 );
    FUNC0 ( FUNC11 ( "aap", FUNC7 ( "aap", -1), "aap ", FUNC7 ( "aap ", -1) ) == 1 );
    FUNC0 ( FUNC11 ( "aap ", FUNC7 ( "aap ", -1), "aap", FUNC7 ( "aap", -1) ) == 1 );
    FUNC1 ( FUNC11 ( "aap", FUNC7 ( "aap", -1), "aap noot", FUNC7 ( "aap noot", -1) ), 5u );
    FUNC1 ( FUNC11 ( "aap", FUNC7 ( "aap", -1), "noot aap", FUNC7 ( "noot aap", -1) ), 5u );
    FUNC1 ( FUNC11 ( "aap", FUNC7 ( "aap", -1), "noot aap mies", FUNC7 ( "noot aap mies", -1) ), 10u );
    FUNC1 ( FUNC11 ( "noot aap mies", FUNC7 ( "noot aap mies", -1), "aap", FUNC7 ( "aap", -1) ), 10u );
    FUNC1 ( FUNC11 ( "otp", FUNC7 ( "otp", -1), "noot aap", FUNC7 ( "noot aap", -1) ), 5u );
    /**
     * Quick converision check.
     */
    {
        char *str = FUNC14 ( "\xA1\xB5", 2 );
        FUNC0 ( FUNC6 ( str, "¡µ" ) == 0 );
        FUNC5 ( str );
    }

    {
        char *str = FUNC13 ( "Valid utf8", 10 );
        FUNC0 ( FUNC6 ( str, "Valid utf8" ) == 0 );
        FUNC5 ( str );
        char in[] = "Valid utf8 until \xc3\x28 we continue here";
        FUNC0 ( FUNC8 ( in, -1, NULL ) == FALSE );
        str = FUNC13 ( in, FUNC17 ( in ) );
        FUNC0 ( FUNC8 ( str, -1, NULL ) == TRUE );
        FUNC0 ( FUNC6 ( str, "Valid utf8 until �( we continue here" ) == 0 );
        FUNC5 ( str );
    }
    {
        FUNC0 ( FUNC18 ( "aapno", "aap€",3) == 0 );
        FUNC0 ( FUNC18 ( "aapno", "aap€",4) != 0 );
        FUNC0 ( FUNC18 ( "aapno", "a",4) != 0 );
        FUNC0 ( FUNC18 ( "a", "aap€",4) != 0 );
//        char in[] = "Valid utf8 until \xc3\x28 we continue here";
//        TASSERT ( utf8_strncmp ( in, "Valid", 3 ) == 0);
    }
    {
        FUNC2 ( FUNC15 ("aap noot mies", 12 , "aap noot mies", 12), -605);
        FUNC2 ( FUNC15 ("anm", 3, "aap noot mies", 12), -155);
        FUNC2 ( FUNC15 ("blu", 3, "aap noot mies", 12), 1073741824);
        config.case_sensitive = TRUE;
        FUNC2 ( FUNC15 ("Anm", 3, "aap noot mies", 12), 1073741754);
        config.case_sensitive = FALSE;
        FUNC2 ( FUNC15 ("Anm", 3, "aap noot mies", 12), -155);
        FUNC2 ( FUNC15 ("aap noot mies", 12,"Anm", 3 ), 1073741824);

    }


    char *a;
    a = FUNC10 ( "{terminal} [-t {title} blub ]-e {cmd}", "{cmd}", "aap", "{title}", "some title", "{terminal}", "rofi-sensible-terminal", NULL);
    FUNC12("%s\n",a);
    FUNC0 ( FUNC6 ( a, "rofi-sensible-terminal -t some title blub -e aap") == 0);
    FUNC5(a);
    a = FUNC10 ( "{terminal} [-t {title} blub ]-e {cmd}", "{cmd}", "aap",  "{terminal}", "rofi-sensible-terminal", NULL);
    FUNC12("%s\n",a);
    FUNC0 ( FUNC6 ( a, "rofi-sensible-terminal -e aap") == 0);
    FUNC5(a);
    a = FUNC10 ( "{name} [<span weight='light' size='small'><i>({category})</i></span>]", "{name}", "Librecad", "{category}", "Desktop app", "{terminal}", "rofi-sensible-terminal", NULL );
    FUNC12("%s\n",a);
    FUNC0 ( FUNC6 ( a, "Librecad <span weight='light' size='small'><i>(Desktop app)</i></span>") == 0);
    FUNC5(a);
    a = FUNC10 ( "{name}[ <span weight='light' size='small'><i>({category})</i></span>]", "{name}", "Librecad", "{terminal}", "rofi-sensible-terminal", NULL );
    FUNC0 ( FUNC6 ( a, "Librecad") == 0);
    FUNC5(a);
    a = FUNC10 ( "{terminal} [{title} blub ]-e {cmd}", "{cmd}", "aap", "{title}", "some title", "{terminal}", "rofi-sensible-terminal", NULL);
    FUNC12("%s\n",a);
    FUNC0 ( FUNC6 ( a, "rofi-sensible-terminal some title blub -e aap") == 0);
    FUNC5(a);
    a = FUNC10 ( "{terminal} [{title} blub ]-e {cmd}",
            "{cmd}", "aap",
            "{title}", NULL,
            "{terminal}", "rofi-sensible-terminal",
            NULL);
    FUNC12("%s\n",a);
    FUNC0 ( FUNC6 ( a, "rofi-sensible-terminal -e aap") == 0);
    FUNC5(a);
}