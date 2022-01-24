#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef  int /*<<< orphan*/  gsize ;
typedef  char gchar ;
typedef  scalar_t__ gboolean ;
struct TYPE_7__ {char* run_list_command; } ;
struct TYPE_6__ {char* message; } ;
typedef  TYPE_1__ GError ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_LNK ; 
 scalar_t__ DT_REG ; 
 scalar_t__ DT_UNKNOWN ; 
 int /*<<< orphan*/  G_FILE_TEST_IS_EXECUTABLE ; 
 char* RUN_CACHE_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const* cache_dir ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__ config ; 
 char* FUNC2 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char const* FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 char* FUNC10 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (char**,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char** FUNC12 (char**,unsigned int) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 char** FUNC16 (char**,unsigned int*,unsigned int) ; 
 char** FUNC17 (char*,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC18 (char*) ; 
 struct dirent* FUNC19 (int /*<<< orphan*/ *) ; 
 char* FUNC20 (char const*) ; 
 int /*<<< orphan*/  sort_func ; 
 char* FUNC21 (char*,char const* const,char**) ; 

__attribute__((used)) static char ** FUNC22 ( unsigned int *length )
{
    GError       *error        = NULL;
    char         **retv        = NULL;
    unsigned int num_favorites = 0;
    char         *path;

    if ( FUNC9 ( "PATH" ) == NULL ) {
        return NULL;
    }
    FUNC0 ( "start" );
    path = FUNC2 ( cache_dir, RUN_CACHE_FILE, NULL );
    retv = FUNC17 ( path, length );
    FUNC7 ( path );
    // Keep track of how many where loaded as favorite.
    num_favorites = ( *length );

    path = FUNC15 ( FUNC9 ( "PATH" ) );

    gsize l        = 0;
    gchar *homedir = FUNC10 (  FUNC8 (), -1, NULL, &l, &error );
    if ( error != NULL ) {
        FUNC4 ( "Failed to convert homedir to UTF-8: %s", error->message );
        FUNC3 ( &error );
        FUNC7 ( homedir );
        return NULL;
    }

    const char *const sep                 = ":";
    char              *strtok_savepointer = NULL;
    for ( const char *dirname = FUNC21 ( path, sep, &strtok_savepointer ); dirname != NULL; dirname = FUNC21 ( NULL, sep, &strtok_savepointer ) ) {
        char *fpath = FUNC20 ( dirname );
        DIR  *dir   = FUNC18 ( fpath );
        FUNC4 ( "Checking path %s for executable.", fpath );
        FUNC7 ( fpath );

        if ( dir != NULL ) {
            struct dirent *dent;
            gsize         dirn_len = 0;
            gchar         *dirn    = FUNC10 ( dirname, -1, NULL, &dirn_len, &error );
            if ( error != NULL ) {
                FUNC4 ( "Failed to convert directory name to UTF-8: %s", error->message );
                FUNC3 ( &error );
                FUNC1 ( dir );
                continue;
            }
            gboolean is_homedir = FUNC13 ( dirn, homedir );
            FUNC7 ( dirn );

            while ( ( dent = FUNC19 ( dir ) ) != NULL ) {
                if ( dent->d_type != DT_REG && dent->d_type != DT_LNK && dent->d_type != DT_UNKNOWN ) {
                    continue;
                }
                // Skip dot files.
                if ( dent->d_name[0] == '.' ) {
                    continue;
                }
                if ( is_homedir ) {
                    gchar    *fpath = FUNC2 ( dirname, dent->d_name, NULL );
                    gboolean b      = FUNC5 ( fpath, G_FILE_TEST_IS_EXECUTABLE );
                    FUNC7 ( fpath );
                    if ( !b ) {
                        continue;
                    }
                }

                gsize name_len;
                gchar *name = FUNC6 ( dent->d_name, -1, NULL, &name_len, &error );
                if ( error != NULL ) {
                    FUNC4 ( "Failed to convert filename to UTF-8: %s", error->message );
                    FUNC3 ( &error );
                    FUNC7 ( name );
                    continue;
                }
                // This is a nice little penalty, but doable? time will tell.
                // given num_favorites is max 25.
                int found = 0;
                for ( unsigned int j = 0; found == 0 && j < num_favorites; j++ ) {
                    if ( FUNC14 ( name, retv[j] ) == 0 ) {
                        found = 1;
                    }
                }

                if ( found == 1 ) {
                    FUNC7 ( name );
                    continue;
                }

                retv                  = FUNC12 ( retv, ( ( *length ) + 2 ) * sizeof ( char* ) );
                retv[( *length )]     = name;
                retv[( *length ) + 1] = NULL;
                ( *length )++;
            }

            FUNC1 ( dir );
        }
    }
    FUNC7 ( homedir );

    // Get external apps.
    if ( config.run_list_command != NULL && config.run_list_command[0] != '\0' ) {
        retv = FUNC16 ( retv, length, num_favorites );
    }
    // No sorting needed.
    if ( ( *length ) == 0 ) {
        return retv;
    }
    // TODO: check this is still fast enough. (takes 1ms on laptop.)
    if ( ( *length ) > num_favorites ) {
        FUNC11 ( &retv[num_favorites], ( *length ) - num_favorites, sizeof ( char* ), sort_func, NULL );
    }
    FUNC7 ( path );

    unsigned int removed = 0;
    for ( unsigned int index = num_favorites; index < ( ( *length ) - 1 ); index++ ) {
        if ( FUNC14 ( retv[index], retv[index + 1] ) == 0 ) {
            FUNC7 ( retv[index] );
            retv[index] = NULL;
            removed++;
        }
    }

    if ( ( *length ) > num_favorites ) {
        FUNC11 ( &retv[num_favorites], ( *length ) - num_favorites, sizeof ( char* ),
                            sort_func,
                            NULL );
    }
    // Reduce array length;
    ( *length ) -= removed;

    FUNC0 ( "stop" );
    return retv;
}