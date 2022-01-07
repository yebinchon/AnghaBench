
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef int gsize ;
typedef char gchar ;
typedef scalar_t__ gboolean ;
struct TYPE_7__ {char* run_list_command; } ;
struct TYPE_6__ {char* message; } ;
typedef TYPE_1__ GError ;
typedef int DIR ;


 scalar_t__ DT_LNK ;
 scalar_t__ DT_REG ;
 scalar_t__ DT_UNKNOWN ;
 int G_FILE_TEST_IS_EXECUTABLE ;
 char* RUN_CACHE_FILE ;
 int TICK_N (char*) ;
 char const* cache_dir ;
 int closedir (int *) ;
 TYPE_5__ config ;
 char* g_build_filename (char const*,char*,int *) ;
 int g_clear_error (TYPE_1__**) ;
 int g_debug (char*,char*) ;
 scalar_t__ g_file_test (char*,int ) ;
 char* g_filename_to_utf8 (char*,int,int *,int *,TYPE_1__**) ;
 int g_free (char*) ;
 char const* g_get_home_dir () ;
 int * g_getenv (char*) ;
 char* g_locale_to_utf8 (char const*,int,int *,int *,TYPE_1__**) ;
 int g_qsort_with_data (char**,unsigned int,int,int ,int *) ;
 char** g_realloc (char**,unsigned int) ;
 scalar_t__ g_str_has_prefix (char*,char*) ;
 scalar_t__ g_strcmp0 (char*,char*) ;
 char* g_strdup (int *) ;
 char** get_apps_external (char**,unsigned int*,unsigned int) ;
 char** history_get_list (char*,unsigned int*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 char* rofi_expand_path (char const*) ;
 int sort_func ;
 char* strtok_r (char*,char const* const,char**) ;

__attribute__((used)) static char ** get_apps ( unsigned int *length )
{
    GError *error = ((void*)0);
    char **retv = ((void*)0);
    unsigned int num_favorites = 0;
    char *path;

    if ( g_getenv ( "PATH" ) == ((void*)0) ) {
        return ((void*)0);
    }
    TICK_N ( "start" );
    path = g_build_filename ( cache_dir, RUN_CACHE_FILE, ((void*)0) );
    retv = history_get_list ( path, length );
    g_free ( path );

    num_favorites = ( *length );

    path = g_strdup ( g_getenv ( "PATH" ) );

    gsize l = 0;
    gchar *homedir = g_locale_to_utf8 ( g_get_home_dir (), -1, ((void*)0), &l, &error );
    if ( error != ((void*)0) ) {
        g_debug ( "Failed to convert homedir to UTF-8: %s", error->message );
        g_clear_error ( &error );
        g_free ( homedir );
        return ((void*)0);
    }

    const char *const sep = ":";
    char *strtok_savepointer = ((void*)0);
    for ( const char *dirname = strtok_r ( path, sep, &strtok_savepointer ); dirname != ((void*)0); dirname = strtok_r ( ((void*)0), sep, &strtok_savepointer ) ) {
        char *fpath = rofi_expand_path ( dirname );
        DIR *dir = opendir ( fpath );
        g_debug ( "Checking path %s for executable.", fpath );
        g_free ( fpath );

        if ( dir != ((void*)0) ) {
            struct dirent *dent;
            gsize dirn_len = 0;
            gchar *dirn = g_locale_to_utf8 ( dirname, -1, ((void*)0), &dirn_len, &error );
            if ( error != ((void*)0) ) {
                g_debug ( "Failed to convert directory name to UTF-8: %s", error->message );
                g_clear_error ( &error );
                closedir ( dir );
                continue;
            }
            gboolean is_homedir = g_str_has_prefix ( dirn, homedir );
            g_free ( dirn );

            while ( ( dent = readdir ( dir ) ) != ((void*)0) ) {
                if ( dent->d_type != DT_REG && dent->d_type != DT_LNK && dent->d_type != DT_UNKNOWN ) {
                    continue;
                }

                if ( dent->d_name[0] == '.' ) {
                    continue;
                }
                if ( is_homedir ) {
                    gchar *fpath = g_build_filename ( dirname, dent->d_name, ((void*)0) );
                    gboolean b = g_file_test ( fpath, G_FILE_TEST_IS_EXECUTABLE );
                    g_free ( fpath );
                    if ( !b ) {
                        continue;
                    }
                }

                gsize name_len;
                gchar *name = g_filename_to_utf8 ( dent->d_name, -1, ((void*)0), &name_len, &error );
                if ( error != ((void*)0) ) {
                    g_debug ( "Failed to convert filename to UTF-8: %s", error->message );
                    g_clear_error ( &error );
                    g_free ( name );
                    continue;
                }


                int found = 0;
                for ( unsigned int j = 0; found == 0 && j < num_favorites; j++ ) {
                    if ( g_strcmp0 ( name, retv[j] ) == 0 ) {
                        found = 1;
                    }
                }

                if ( found == 1 ) {
                    g_free ( name );
                    continue;
                }

                retv = g_realloc ( retv, ( ( *length ) + 2 ) * sizeof ( char* ) );
                retv[( *length )] = name;
                retv[( *length ) + 1] = ((void*)0);
                ( *length )++;
            }

            closedir ( dir );
        }
    }
    g_free ( homedir );


    if ( config.run_list_command != ((void*)0) && config.run_list_command[0] != '\0' ) {
        retv = get_apps_external ( retv, length, num_favorites );
    }

    if ( ( *length ) == 0 ) {
        return retv;
    }

    if ( ( *length ) > num_favorites ) {
        g_qsort_with_data ( &retv[num_favorites], ( *length ) - num_favorites, sizeof ( char* ), sort_func, ((void*)0) );
    }
    g_free ( path );

    unsigned int removed = 0;
    for ( unsigned int index = num_favorites; index < ( ( *length ) - 1 ); index++ ) {
        if ( g_strcmp0 ( retv[index], retv[index + 1] ) == 0 ) {
            g_free ( retv[index] );
            retv[index] = ((void*)0);
            removed++;
        }
    }

    if ( ( *length ) > num_favorites ) {
        g_qsort_with_data ( &retv[num_favorites], ( *length ) - num_favorites, sizeof ( char* ),
                            sort_func,
                            ((void*)0) );
    }

    ( *length ) -= removed;

    TICK_N ( "stop" );
    return retv;
}
