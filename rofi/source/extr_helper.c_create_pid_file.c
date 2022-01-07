
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int LOCK_EX ;
 int LOCK_NB ;
 int O_CREAT ;
 int O_RDWR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int errno ;
 scalar_t__ fcntl (int,int ,int,...) ;
 int flock (int,int) ;
 scalar_t__ ftruncate (int,int ) ;
 int g_open (char const*,int,int) ;
 int g_strerror (int ) ;
 int g_warning (char*,...) ;
 int getpid () ;
 int remove_pid_file (int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ write (int,char*,int) ;

int create_pid_file ( const char *pidfile )
{
    if ( pidfile == ((void*)0) ) {
        return -1;
    }

    int fd = g_open ( pidfile, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR );
    if ( fd < 0 ) {
        g_warning ( "Failed to create pid file: '%s'.", pidfile );
        return -1;
    }

    int flags = fcntl ( fd, F_GETFD, ((void*)0) );
    flags = flags | FD_CLOEXEC;
    if ( fcntl ( fd, F_SETFD, flags, ((void*)0) ) < 0 ) {
        g_warning ( "Failed to set CLOEXEC on pidfile." );
        remove_pid_file ( fd );
        return -1;
    }

    int retv = flock ( fd, LOCK_EX | LOCK_NB );
    if ( retv != 0 ) {
        g_warning ( "Failed to set lock on pidfile: Rofi already running?" );
        g_warning ( "Got error: %d %s", retv, g_strerror ( errno ) );
        remove_pid_file ( fd );
        return -1;
    }
    if ( ftruncate ( fd, (off_t) 0 ) == 0 ) {

        char buffer[64];
        int length = snprintf ( buffer, 64, "%i", getpid () );
        ssize_t l = 0;
        while ( l < length ) {
            l += write ( fd, &buffer[l], length - l );
        }
    }
    return fd;
}
