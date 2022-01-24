#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char gchar ;
struct TYPE_7__ {int location; int case_sensitive; int /*<<< orphan*/  menu_lines; } ;
struct TYPE_6__ {char* display_name; } ;
struct TYPE_5__ {char separator; char* message; char* format; char* column_separator; int /*<<< orphan*/  columns; int /*<<< orphan*/  input_stream; int /*<<< orphan*/  data_input_stream; int /*<<< orphan*/  cancel; int /*<<< orphan*/  cancel_source; int /*<<< orphan*/  num_active_list; int /*<<< orphan*/  active_list; int /*<<< orphan*/  num_urgent_list; int /*<<< orphan*/  urgent_list; int /*<<< orphan*/  selected_line; } ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_1__ DmenuModePrivateData ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int STDIN_FILENO ; 
 int TRUE ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  async_read_cancel ; 
 TYPE_4__ config ; 
 TYPE_3__ dmenu_mode ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 char* FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int) ; 

__attribute__((used)) static int FUNC21 ( Mode *sw )
{
    if ( FUNC15 ( sw ) != NULL ) {
        return TRUE;
    }
    FUNC16 ( sw, FUNC9 ( sizeof ( DmenuModePrivateData ) ) );
    DmenuModePrivateData *pd = (DmenuModePrivateData *) FUNC15 ( sw );

    pd->separator     = '\n';
    pd->selected_line = UINT32_MAX;

    FUNC3 ( "-mesg", &( pd->message ) );

    // Input data separator.
    FUNC2 ( "-sep", &( pd->separator ) );

    FUNC4 (  "-selected-row", &( pd->selected_line ) );
    // By default we print the unescaped line back.
    pd->format = "s";

    // Allow user to override the output format.
    FUNC3 ( "-format", &( pd->format ) );
    // Urgent.
    char *str = NULL;
    FUNC3 (  "-u", &str );
    if ( str != NULL ) {
        FUNC18 ( str, &( pd->urgent_list ), &( pd->num_urgent_list ) );
    }
    // Active
    str = NULL;
    FUNC3 (  "-a", &str );
    if ( str != NULL ) {
        FUNC18 ( str, &( pd->active_list ), &( pd->num_active_list ) );
    }

    // DMENU COMPATIBILITY
    FUNC4 (  "-l", &( config.menu_lines ) );

    str = NULL;
    FUNC3 ( "-window-title", &str );
    if ( str ) {
        dmenu_mode.display_name = str;
    }

    /**
     * Dmenu compatibility.
     * `-b` put on bottom.
     */
    if ( FUNC1 ( "-b" ) >= 0 ) {
        config.location = 6;
    }
    /* -i case insensitive */
    config.case_sensitive = TRUE;
    if ( FUNC1 ( "-i" ) >= 0 ) {
        config.case_sensitive = FALSE;
    }
    int fd = STDIN_FILENO;
    str = NULL;
    if ( FUNC3 ( "-input", &str ) ) {
        char *estr = FUNC19 ( str );
        fd = FUNC17 ( str, O_RDONLY );
        if ( fd < 0 ) {
            char *msg = FUNC10 ( "Failed to open file: <b>%s</b>:\n\t<i>%s</i>", estr, FUNC11 ( errno ) );
            FUNC20 ( msg, TRUE );
            FUNC8 ( msg );
            FUNC8 ( estr );
            return TRUE;
        }
        FUNC8 ( estr );
    }
    // If input is stdin, and a tty, do not read as rofi grabs input and therefor blocks.
    if ( !( fd == STDIN_FILENO && FUNC14 ( fd ) == 1 ) ) {
        pd->cancel            = FUNC6 ();
        pd->cancel_source     = FUNC5 ( pd->cancel, FUNC0 ( async_read_cancel ), pd, NULL );
        pd->input_stream      = FUNC13 ( fd, fd != STDIN_FILENO );
        pd->data_input_stream = FUNC7 ( pd->input_stream );
    }
    gchar *columns = NULL;
    if ( FUNC3 ( "-display-columns", &columns ) ) {
        pd->columns          = FUNC12 ( columns, ",", 0 );
        pd->column_separator = "\t";
        FUNC3 ( "-display-column-separator", &pd->column_separator );
    }
    return TRUE;
}