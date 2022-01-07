
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ close (int) ;
 int errno ;
 int g_strerror (int ) ;
 int g_warning (char*,int ) ;

void remove_pid_file ( int fd )
{
    if ( fd >= 0 ) {
        if ( close ( fd ) ) {
            g_warning ( "Failed to close pidfile: '%s'", g_strerror ( errno ) );
        }
    }
}
