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
typedef  int gint64 ;
typedef  char gchar ;
struct TYPE_6__ {int port; int /*<<< orphan*/ * hostname; } ;
typedef  TYPE_1__ SshEntry ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 char* FUNC8 (scalar_t__) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char**,size_t*,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char*,char) ; 
 char* FUNC13 (char**,char*) ; 
 char* FUNC14 (char*,char*) ; 

__attribute__((used)) static SshEntry *FUNC15 ( const char *path, SshEntry * retv, unsigned int *length )
{
    FILE *fd   = FUNC1 ( path, "r" );
    if ( fd != NULL ) {
        char   *buffer       = NULL;
        size_t buffer_length = 0;
        // Reading one line per time.
        while ( FUNC11 ( &buffer, &buffer_length, fd ) > 0 ) {
            // Strip whitespace.
            char *start = FUNC9(&(buffer[0]));
            // Find start.
            if ( *start == '#' || *start == '@' ){
                // skip comments or cert-authority or revoked items.
                continue;
            }
            if ( *start == '|' ) {
                // Skip hashed hostnames.
                continue;
            }
            // Find end of hostname set.
            char *end  = FUNC14 ( start, " " );
            if ( end == NULL  ) {
                // Something is wrong.
                continue;
            }
            *end = '\0';
            char *sep = start;
            start = FUNC13(&sep,", " );
            while (  start )
            {
                int port = 0;
                if ( start[0] == '[' ) {
                    start++;
                    char *end = FUNC12 ( start, ']');
                    if ( end[1] == ':' ){
                        *end  = '\0';
                        errno = 0;
                        gchar *endptr = NULL;
                        gint64 number = FUNC4 ( &(end[2]), &endptr, 10);
                        if ( errno != 0  ) {
                            FUNC10 ( "Failed to parse port number: %s.", &(end[2]) );
                        } else if ( endptr == &(end[2])) {
                            FUNC10 ( "Failed to parse port number: %s, invalid number.", &(end[2]) );
                        } else if ( number < 0 || number > 65535 ) {
                            FUNC10 ( "Failed to parse port number: %s, out of range.", &(end[2]) );
                        } else {
                            port = number;
                        }
                    }
                }
                // Is this host name already in the list?
                // We often get duplicates in hosts file, so lets check this.
                int found = 0;
                for ( unsigned int j = 0; j < ( *length ); j++ ) {
                    if ( !FUNC3 ( start, retv[j].hostname ) ) {
                        found = 1;
                        break;
                    }
                }

                if ( !found ) {
                    // Add this host name to the list.
                    retv                           = FUNC6 ( retv, ( ( *length ) + 2 ) * sizeof ( SshEntry ) );
                    retv[( *length )].hostname     = FUNC7 ( start );
                    retv[( *length )].port         = port;
                    retv[( *length ) + 1].hostname = NULL;
                    retv[( *length ) + 1].port     = 0;
                    ( *length )++;
                }
                start = FUNC13(&sep,", " );
            }
        }
        if ( buffer != NULL ) {
            FUNC2 ( buffer );
        }
        if ( FUNC0 ( fd ) != 0 ) {
            FUNC10 ( "Failed to close hosts file: '%s'", FUNC8 ( errno ) );
        }
    } else {
        FUNC5 ( "Failed to open KnownHostFile: '%s'", path );
    }

    return retv;
}