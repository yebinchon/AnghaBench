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
struct TYPE_2__ {int /*<<< orphan*/  run_list_command; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__ config ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char** FUNC4 (char**,unsigned int) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static char ** FUNC11 ( char **retv, unsigned int *length, unsigned int num_favorites )
{
    int fd = FUNC0 ( config.run_list_command );
    if ( fd >= 0 ) {
        FILE *inp = FUNC2 ( fd, "r" );
        if ( inp ) {
            char   *buffer       = NULL;
            size_t buffer_length = 0;

            while ( FUNC8 ( &buffer, &buffer_length, inp ) > 0 ) {
                int found = 0;
                // Filter out line-end.
                if ( buffer[FUNC10 ( buffer ) - 1] == '\n' ) {
                    buffer[FUNC10 ( buffer ) - 1] = '\0';
                }

                // This is a nice little penalty, but doable? time will tell.
                // given num_favorites is max 25.
                for ( unsigned int j = 0; found == 0 && j < num_favorites; j++ ) {
                    if ( FUNC9 ( buffer, retv[j] ) == 0 ) {
                        found = 1;
                    }
                }

                if ( found == 1 ) {
                    continue;
                }

                // No duplicate, add it.
                retv              = FUNC4 ( retv, ( ( *length ) + 2 ) * sizeof ( char* ) );
                retv[( *length )] = FUNC5 ( buffer );

                ( *length )++;
            }
            if ( buffer != NULL ) {
                FUNC3 ( buffer );
            }
            if ( FUNC1 ( inp ) != 0 ) {
                FUNC7 ( "Failed to close stdout off executor script: '%s'",
                            FUNC6 ( errno ) );
            }
        }
    }
    retv[( *length ) ] = NULL;
    return retv;
}