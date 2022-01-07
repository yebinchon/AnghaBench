
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t gl_pathc; char** gl_pathv; int gl_offs; } ;
typedef TYPE_1__ glob_t ;
typedef char gchar ;
struct TYPE_9__ {int * hostname; scalar_t__ port; } ;
typedef TYPE_2__ SshEntry ;
typedef int SSHModePrivateData ;
typedef int FILE ;


 int SSH_TOKEN_DELIM ;
 int add_known_hosts_file (int *,char*) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int g_ascii_strcasecmp (char*,int *) ;
 char* g_ascii_strdown (char*,int) ;
 char* g_build_filename (char*,char*,int *) ;
 int g_debug (char*,char const*) ;
 int g_free (char*) ;
 char* g_path_get_dirname (char const*) ;
 int g_path_is_absolute (char*) ;
 TYPE_2__* g_realloc (TYPE_2__*,unsigned int) ;
 scalar_t__ g_strcmp0 (char*,char*) ;
 void* g_strdup (char*) ;
 int g_strerror (int ) ;
 int g_warning (char*,int ) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 scalar_t__ glob (char*,int ,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 char* rofi_expand_path (char*) ;
 scalar_t__ strpbrk (char*,char const* const) ;
 char* strtok_r (char*,int ,char**) ;

__attribute__((used)) static void parse_ssh_config_file ( SSHModePrivateData *pd, const char *filename, SshEntry **retv, unsigned int *length, unsigned int num_favorites )
{
    FILE *fd = fopen ( filename, "r" );

    g_debug ( "Parsing ssh config file: %s", filename );
    if ( fd != ((void*)0) ) {
        char *buffer = ((void*)0);
        size_t buffer_length = 0;
        char *strtok_pointer = ((void*)0);
        while ( getline ( &buffer, &buffer_length, fd ) > 0 ) {





            char *token = strtok_r ( buffer, SSH_TOKEN_DELIM, &strtok_pointer );


            if ( !token || *token == '#' ) {
                continue;
            }
            char *low_token = g_ascii_strdown(token, -1);
            if ( g_strcmp0 ( low_token, "include" ) == 0 ) {
                token = strtok_r ( ((void*)0), SSH_TOKEN_DELIM, &strtok_pointer );
                g_debug ( "Found Include: %s", token );
                gchar *path = rofi_expand_path ( token );
                gchar *full_path = ((void*)0);
                if ( !g_path_is_absolute ( path ) ) {
                    char *dirname = g_path_get_dirname ( filename );
                    full_path = g_build_filename ( dirname, path, ((void*)0) );
                    g_free ( dirname );
                }
                else {
                    full_path = g_strdup ( path );
                }
                glob_t globbuf = { .gl_pathc = 0, .gl_pathv = ((void*)0), .gl_offs = 0 };

                if ( glob ( full_path, 0, ((void*)0), &globbuf ) == 0 ) {
                    for ( size_t iter = 0; iter < globbuf.gl_pathc; iter++ ) {
                        parse_ssh_config_file ( pd, globbuf.gl_pathv[iter], retv, length, num_favorites );
                    }
                }
                globfree ( &globbuf );

                g_free ( full_path );
                g_free ( path );
            }
            else if ( g_strcmp0 ( low_token, "userknownhostsfile" ) == 0 ) {
                while ( ( token = strtok_r ( ((void*)0), SSH_TOKEN_DELIM, &strtok_pointer ) ) ) {
                    g_debug("Found extra UserKnownHostsFile: %s", token);
                    add_known_hosts_file ( pd, token );
                }
            }
            else if ( g_strcmp0 ( low_token, "host" ) == 0 ) {





                while ( ( token = strtok_r ( ((void*)0), SSH_TOKEN_DELIM, &strtok_pointer ) ) ) {

                    const char *const sep = "*?";
                    if ( *token == '!' || strpbrk ( token, sep ) ) {
                        continue;
                    }


                    if ( *token == '#' ) {
                        break;
                    }




                    int found = 0;
                    for ( unsigned int j = 0; j < num_favorites; j++ ) {
                        if ( !g_ascii_strcasecmp ( token, ( *retv )[j].hostname ) ) {
                            found = 1;
                            break;
                        }
                    }

                    if ( found ) {
                        continue;
                    }


                    ( *retv ) = g_realloc ( ( *retv ), ( ( *length ) + 2 ) * sizeof ( SshEntry ) );
                    ( *retv )[( *length )].hostname = g_strdup ( token );
                    ( *retv )[( *length )].port = 0;
                    ( *retv )[( *length ) + 1].hostname = ((void*)0);
                    ( *length )++;
                }
            }
            g_free ( low_token );
        }
        if ( buffer != ((void*)0) ) {
            free ( buffer );
        }

        if ( fclose ( fd ) != 0 ) {
            g_warning ( "Failed to close ssh configuration file: '%s'", g_strerror ( errno ) );
        }
    }
}
