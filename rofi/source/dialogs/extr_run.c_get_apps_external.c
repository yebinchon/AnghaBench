
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int run_list_command; } ;
typedef int FILE ;


 TYPE_1__ config ;
 int errno ;
 int execute_generator (int ) ;
 scalar_t__ fclose (int *) ;
 int * fdopen (int,char*) ;
 int free (char*) ;
 char** g_realloc (char**,unsigned int) ;
 char* g_strdup (char*) ;
 int g_strerror (int ) ;
 int g_warning (char*,int ) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char ** get_apps_external ( char **retv, unsigned int *length, unsigned int num_favorites )
{
    int fd = execute_generator ( config.run_list_command );
    if ( fd >= 0 ) {
        FILE *inp = fdopen ( fd, "r" );
        if ( inp ) {
            char *buffer = ((void*)0);
            size_t buffer_length = 0;

            while ( getline ( &buffer, &buffer_length, inp ) > 0 ) {
                int found = 0;

                if ( buffer[strlen ( buffer ) - 1] == '\n' ) {
                    buffer[strlen ( buffer ) - 1] = '\0';
                }



                for ( unsigned int j = 0; found == 0 && j < num_favorites; j++ ) {
                    if ( strcasecmp ( buffer, retv[j] ) == 0 ) {
                        found = 1;
                    }
                }

                if ( found == 1 ) {
                    continue;
                }


                retv = g_realloc ( retv, ( ( *length ) + 2 ) * sizeof ( char* ) );
                retv[( *length )] = g_strdup ( buffer );

                ( *length )++;
            }
            if ( buffer != ((void*)0) ) {
                free ( buffer );
            }
            if ( fclose ( inp ) != 0 ) {
                g_warning ( "Failed to close stdout off executor script: '%s'",
                            g_strerror ( errno ) );
            }
        }
    }
    retv[( *length ) ] = ((void*)0);
    return retv;
}
