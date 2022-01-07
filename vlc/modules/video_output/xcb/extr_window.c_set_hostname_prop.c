
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;
typedef int xcb_connection_t ;


 int XA_WM_CLIENT_MACHINE ;
 long _POSIX_HOST_NAME_MAX ;
 int _SC_HOST_NAME_MAX ;
 int free (char*) ;
 scalar_t__ gethostname (char*,long) ;
 char* malloc (long) ;
 int set_ascii_prop (int *,int ,int ,char*) ;
 long sysconf (int ) ;

__attribute__((used)) static inline
void set_hostname_prop (xcb_connection_t *conn, xcb_window_t window)
{
    char* hostname;
    long host_name_max = sysconf (_SC_HOST_NAME_MAX);
    if (host_name_max <= 0) host_name_max = _POSIX_HOST_NAME_MAX;
    hostname = malloc (host_name_max);
    if(!hostname) return;

    if (gethostname (hostname, host_name_max) == 0)
    {
        hostname[host_name_max - 1] = '\0';
        set_ascii_prop (conn, window, XA_WM_CLIENT_MACHINE, hostname);
    }
    free(hostname);
}
