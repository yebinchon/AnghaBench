#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t gl_pathc; char** gl_pathv; int /*<<< orphan*/  gl_offs; } ;
typedef  TYPE_1__ glob_t ;
typedef  char gchar ;
struct TYPE_9__ {int /*<<< orphan*/ * hostname; scalar_t__ port; } ;
typedef  TYPE_2__ SshEntry ;
typedef  int /*<<< orphan*/  SSHModePrivateData ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_TOKEN_DELIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,int) ; 
 char* FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_2__* FUNC11 (TYPE_2__*,unsigned int) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 void* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 char* FUNC19 (char*) ; 
 scalar_t__ FUNC20 (char*,char const* const) ; 
 char* FUNC21 (char*,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static void FUNC22 ( SSHModePrivateData *pd, const char *filename, SshEntry **retv, unsigned int *length, unsigned int num_favorites )
{
    FILE *fd = FUNC2 ( filename, "r" );

    FUNC7 ( "Parsing ssh config file: %s", filename );
    if ( fd != NULL ) {
        char   *buffer         = NULL;
        size_t buffer_length   = 0;
        char   *strtok_pointer = NULL;
        while ( FUNC16 ( &buffer, &buffer_length, fd ) > 0 ) {
            // Each line is either empty, a comment line starting with a '#'
            // character or of the form "keyword [=] arguments", where there may
            // be multiple (possibly quoted) arguments separated by whitespace.
            // The keyword is separated from its arguments by whitespace OR by
            // optional whitespace and a '=' character.
            char *token = FUNC21 ( buffer, SSH_TOKEN_DELIM, &strtok_pointer );
            // Skip empty lines and comment lines. Also skip lines where the
            // keyword is not "Host".
            if ( !token || *token == '#' ) {
                continue;
            }
            char *low_token = FUNC5(token, -1);
            if ( FUNC12 ( low_token, "include" ) == 0 ) {
                token = FUNC21 ( NULL, SSH_TOKEN_DELIM, &strtok_pointer );
                FUNC7 ( "Found Include: %s", token );
                gchar *path      = FUNC19 ( token );
                gchar *full_path = NULL;
                if ( !FUNC10 ( path ) ) {
                    char *dirname = FUNC9 ( filename );
                    full_path = FUNC6 ( dirname, path, NULL );
                    FUNC8 ( dirname );
                }
                else {
                    full_path = FUNC13 ( path );
                }
                glob_t globbuf = { .gl_pathc = 0, .gl_pathv = NULL, .gl_offs = 0 };

                if ( FUNC17 ( full_path, 0, NULL, &globbuf ) == 0 ) {
                    for ( size_t iter = 0; iter < globbuf.gl_pathc; iter++ ) {
                        FUNC22 ( pd, globbuf.gl_pathv[iter], retv, length, num_favorites );
                    }
                }
                FUNC18 ( &globbuf );

                FUNC8 ( full_path );
                FUNC8 ( path );
            }
            else if ( FUNC12 ( low_token, "userknownhostsfile" ) == 0 ) {
                while ( ( token = FUNC21 ( NULL, SSH_TOKEN_DELIM, &strtok_pointer ) ) ) {
                    FUNC7("Found extra UserKnownHostsFile: %s", token);
                    FUNC0 ( pd, token );
                }
            }
            else if ( FUNC12 ( low_token, "host" ) == 0 ) {
                // Now we know that this is a "Host" line.
                // The "Host" keyword is followed by one more host names separated
                // by whitespace; while host names may be quoted with double quotes
                // to represent host names containing spaces, we don't support this
                // (how many host names contain spaces?).
                while ( ( token = FUNC21 ( NULL, SSH_TOKEN_DELIM, &strtok_pointer ) ) ) {
                    // We do not want to show wildcard entries, as you cannot ssh to them.
                    const char *const sep = "*?";
                    if ( *token == '!' || FUNC20 ( token, sep ) ) {
                        continue;
                    }

                    // If comment, skip from now on.
                    if ( *token == '#' ) {
                        break;
                    }

                    // Is this host name already in the history file?
                    // This is a nice little penalty, but doable? time will tell.
                    // given num_favorites is max 25.
                    int found = 0;
                    for ( unsigned int j = 0; j < num_favorites; j++ ) {
                        if ( !FUNC4 ( token, ( *retv )[j].hostname ) ) {
                            found = 1;
                            break;
                        }
                    }

                    if ( found ) {
                        continue;
                    }

                    // Add this host name to the list.
                    ( *retv )                           = FUNC11 ( ( *retv ), ( ( *length ) + 2 ) * sizeof ( SshEntry ) );
                    ( *retv )[( *length )].hostname     = FUNC13 ( token );
                    ( *retv )[( *length )].port         = 0;
                    ( *retv )[( *length ) + 1].hostname = NULL;
                    ( *length )++;
                }
            }
            FUNC8 ( low_token );
        }
        if ( buffer != NULL ) {
            FUNC3 ( buffer );
        }

        if ( FUNC1 ( fd ) != 0 ) {
            FUNC15 ( "Failed to close ssh configuration file: '%s'", FUNC14 ( errno ) );
        }
    }
}