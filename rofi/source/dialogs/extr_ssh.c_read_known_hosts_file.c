
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int gint64 ;
typedef char gchar ;
struct TYPE_6__ {int port; int * hostname; } ;
typedef TYPE_1__ SshEntry ;
typedef int FILE ;


 scalar_t__ errno ;
 scalar_t__ fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int g_ascii_strcasecmp (char*,int *) ;
 int g_ascii_strtoll (char*,char**,int) ;
 int g_debug (char*,char const*) ;
 TYPE_1__* g_realloc (TYPE_1__*,unsigned int) ;
 int * g_strdup (char*) ;
 char* g_strerror (scalar_t__) ;
 char* g_strstrip (char*) ;
 int g_warning (char*,char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 char* strchr (char*,char) ;
 char* strsep (char**,char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static SshEntry *read_known_hosts_file ( const char *path, SshEntry * retv, unsigned int *length )
{
    FILE *fd = fopen ( path, "r" );
    if ( fd != ((void*)0) ) {
        char *buffer = ((void*)0);
        size_t buffer_length = 0;

        while ( getline ( &buffer, &buffer_length, fd ) > 0 ) {

            char *start = g_strstrip(&(buffer[0]));

            if ( *start == '#' || *start == '@' ){

                continue;
            }
            if ( *start == '|' ) {

                continue;
            }

            char *end = strstr ( start, " " );
            if ( end == ((void*)0) ) {

                continue;
            }
            *end = '\0';
            char *sep = start;
            start = strsep(&sep,", " );
            while ( start )
            {
                int port = 0;
                if ( start[0] == '[' ) {
                    start++;
                    char *end = strchr ( start, ']');
                    if ( end[1] == ':' ){
                        *end = '\0';
                        errno = 0;
                        gchar *endptr = ((void*)0);
                        gint64 number = g_ascii_strtoll ( &(end[2]), &endptr, 10);
                        if ( errno != 0 ) {
                            g_warning ( "Failed to parse port number: %s.", &(end[2]) );
                        } else if ( endptr == &(end[2])) {
                            g_warning ( "Failed to parse port number: %s, invalid number.", &(end[2]) );
                        } else if ( number < 0 || number > 65535 ) {
                            g_warning ( "Failed to parse port number: %s, out of range.", &(end[2]) );
                        } else {
                            port = number;
                        }
                    }
                }


                int found = 0;
                for ( unsigned int j = 0; j < ( *length ); j++ ) {
                    if ( !g_ascii_strcasecmp ( start, retv[j].hostname ) ) {
                        found = 1;
                        break;
                    }
                }

                if ( !found ) {

                    retv = g_realloc ( retv, ( ( *length ) + 2 ) * sizeof ( SshEntry ) );
                    retv[( *length )].hostname = g_strdup ( start );
                    retv[( *length )].port = port;
                    retv[( *length ) + 1].hostname = ((void*)0);
                    retv[( *length ) + 1].port = 0;
                    ( *length )++;
                }
                start = strsep(&sep,", " );
            }
        }
        if ( buffer != ((void*)0) ) {
            free ( buffer );
        }
        if ( fclose ( fd ) != 0 ) {
            g_warning ( "Failed to close hosts file: '%s'", g_strerror ( errno ) );
        }
    } else {
        g_debug ( "Failed to open KnownHostFile: '%s'", path );
    }

    return retv;
}
