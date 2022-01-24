#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__** available_modi ; 
 char* color_bold ; 
 char* color_green ; 
 char* color_red ; 
 char* color_reset ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__** modi ; 
 unsigned int num_available_modi ; 
 unsigned int num_modi ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3 ( void )
{
    int is_term = FUNC2 ( FUNC0 ( stdout ) );
    // Daemon mode
    FUNC1 ( stderr, "Rofi is unsure what to show.\n" );
    FUNC1 ( stderr, "Please specify the mode you want to show.\n\n" );
    FUNC1 ( stderr, "    %srofi%s -show %s{mode}%s\n\n",
              is_term ? color_bold : "", is_term ? color_reset : "",
              is_term ? color_green : "", is_term ? color_reset : "" );
    FUNC1 ( stderr, "The following modi are enabled:\n" );
    for ( unsigned int j = 0; j < num_modi; j++ ) {
        FUNC1 ( stderr, " * %s%s%s\n",
                  is_term ? color_green : "",
                  modi[j]->name,
                  is_term ? color_reset : "" );
    }
    FUNC1 ( stderr, "\nThe following can be enabled:\n" );
    for  ( unsigned int i = 0; i < num_available_modi; i++ ) {
        gboolean active = FALSE;
        for ( unsigned int j = 0; j < num_modi; j++ ) {
            if ( modi[j] == available_modi[i] ) {
                active = TRUE;
                break;
            }
        }
        if ( !active ) {
            FUNC1 ( stderr, " * %s%s%s\n",
                      is_term ? color_red : "",
                      available_modi[i]->name,
                      is_term ? color_reset : "" );
        }
    }
    FUNC1 ( stderr, "\nTo activate a mode, add it to the list of modi in the %smodi%s setting.\n",
              is_term ? color_green : "", is_term ? color_reset : "" );
}