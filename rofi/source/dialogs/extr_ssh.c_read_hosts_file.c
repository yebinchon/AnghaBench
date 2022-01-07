
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * hostname; scalar_t__ port; } ;
typedef TYPE_1__ SshEntry ;
typedef int FILE ;


 int errno ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int g_ascii_strcasecmp (char*,int *) ;
 TYPE_1__* g_realloc (TYPE_1__*,unsigned int) ;
 int * g_strdup (char*) ;
 int g_strerror (int ) ;
 int g_warning (char*,int ) ;
 scalar_t__ getline (char**,size_t*,int *) ;

__attribute__((used)) static SshEntry *read_hosts_file ( SshEntry * retv, unsigned int *length )
{

    FILE *fd = fopen ( "/etc/hosts", "r" );
    if ( fd != ((void*)0) ) {
        char *buffer = ((void*)0);
        size_t buffer_length = 0;

        while ( getline ( &buffer, &buffer_length, fd ) > 0 ) {

            unsigned int index = 0, ti = 0;
            char *token = buffer;


            do {
                char c = buffer[index];

                if ( c == ' ' || c == '\t' || c == '\n' || c == '\0' || c == '#' ) {
                    buffer[index] = '\0';

                    if ( token[0] != '\0' ) {
                        ti++;

                        if ( ti > 1 ) {


                            int found = 0;
                            for ( unsigned int j = 0; j < ( *length ); j++ ) {
                                if ( !g_ascii_strcasecmp ( token, retv[j].hostname ) ) {
                                    found = 1;
                                    break;
                                }
                            }

                            if ( !found ) {

                                retv = g_realloc ( retv,
                                                   ( ( *length ) + 2 ) * sizeof ( SshEntry ) );
                                retv[( *length )].hostname = g_strdup ( token );
                                retv[( *length )].port = 0;
                                retv[( *length ) + 1].hostname = ((void*)0);
                                ( *length )++;
                            }
                        }
                    }

                    token = &buffer[index + 1];

                    if ( c == '#' ) {
                        break;
                    }
                }

                index++;
            } while ( buffer[index] != '\0' && buffer[index] != '#' );
        }
        if ( buffer != ((void*)0) ) {
            free ( buffer );
        }
        if ( fclose ( fd ) != 0 ) {
            g_warning ( "Failed to close hosts file: '%s'", g_strerror ( errno ) );
        }
    }

    return retv;
}
