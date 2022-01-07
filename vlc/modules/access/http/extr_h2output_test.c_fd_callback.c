
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;


 int fileno (int ) ;
 int stderr ;

__attribute__((used)) static int fd_callback(vlc_tls_t *tls, short *restrict events)
{
    (void) tls;
    (void) events;
    return fileno(stderr);
}
