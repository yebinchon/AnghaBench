
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disable_history; } ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 char** __history_get_element_list_fields (int *,unsigned int*) ;
 TYPE_1__ config ;
 scalar_t__ errno ;
 scalar_t__ fclose (int *) ;
 int * g_fopen (char const*,char*) ;
 int g_strerror (scalar_t__) ;
 int g_warning (char*,int ) ;

char ** history_get_list ( const char *filename, unsigned int *length )
{
    *length = 0;

    if ( config.disable_history ) {
        return ((void*)0);
    }
    char **retv = ((void*)0);

    FILE *fd = g_fopen ( filename, "r" );
    if ( fd == ((void*)0) ) {


        if ( errno != ENOENT ) {
            g_warning ( "Failed to open file: %s", g_strerror ( errno ) );
        }
        return ((void*)0);
    }

    retv = __history_get_element_list_fields ( fd, length );


    if ( fclose ( fd ) != 0 ) {
        g_warning ( "Failed to close history file: %s", g_strerror ( errno ) );
    }
    return retv;
}
