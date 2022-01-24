#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * hostname; scalar_t__ port; } ;
typedef  TYPE_1__ SshEntry ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char**,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static SshEntry *FUNC9 ( SshEntry * retv, unsigned int *length )
{
    // Read the hosts file.
    FILE *fd = FUNC1 ( "/etc/hosts", "r" );
    if ( fd != NULL ) {
        char   *buffer       = NULL;
        size_t buffer_length = 0;
        // Reading one line per time.
        while ( FUNC8 ( &buffer, &buffer_length, fd ) > 0 ) {
            // Evaluate one line.
            unsigned int index = 0, ti = 0;
            char         *token = buffer;

            // Tokenize it.
            do {
                char c = buffer[index];
                // Break on space, tab, newline and \0.
                if ( c == ' ' || c == '\t' || c == '\n' || c == '\0' || c == '#' ) {
                    buffer[index] = '\0';
                    // Ignore empty tokens
                    if ( token[0] != '\0' ) {
                        ti++;
                        // and first token.
                        if ( ti > 1 ) {
                            // Is this host name already in the list?
                            // We often get duplicates in hosts file, so lets check this.
                            int found = 0;
                            for ( unsigned int j = 0; j < ( *length ); j++ ) {
                                if ( !FUNC3 ( token, retv[j].hostname ) ) {
                                    found = 1;
                                    break;
                                }
                            }

                            if ( !found ) {
                                // Add this host name to the list.
                                retv = FUNC4 ( retv,
                                                   ( ( *length ) + 2 ) * sizeof ( SshEntry ) );
                                retv[( *length )].hostname     = FUNC5 ( token );
                                retv[( *length )].port         = 0;
                                retv[( *length ) + 1].hostname = NULL;
                                ( *length )++;
                            }
                        }
                    }
                    // Set start to next element.
                    token = &buffer[index + 1];
                    // Everything after comment ignore.
                    if ( c == '#' ) {
                        break;
                    }
                }
                // Skip to the next entry.
                index++;
            } while ( buffer[index] != '\0' && buffer[index] != '#' );
        }
        if ( buffer != NULL ) {
            FUNC2 ( buffer );
        }
        if ( FUNC0 ( fd ) != 0 ) {
            FUNC7 ( "Failed to close hosts file: '%s'", FUNC6 ( errno ) );
        }
    }

    return retv;
}