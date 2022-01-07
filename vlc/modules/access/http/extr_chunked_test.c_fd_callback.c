
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_tls {int dummy; } ;



__attribute__((used)) static int fd_callback(struct vlc_tls *tls, short *restrict events)
{
    (void) tls;
    (void) events;
    return -1;
}
