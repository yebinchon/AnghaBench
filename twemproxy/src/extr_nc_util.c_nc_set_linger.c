
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linger {int l_onoff; int l_linger; } ;
typedef int socklen_t ;
typedef int linger ;


 int SOL_SOCKET ;
 int SO_LINGER ;
 int setsockopt (int,int ,int ,struct linger*,int) ;

int
nc_set_linger(int sd, int timeout)
{
    struct linger linger;
    socklen_t len;

    linger.l_onoff = 1;
    linger.l_linger = timeout;

    len = sizeof(linger);

    return setsockopt(sd, SOL_SOCKET, SO_LINGER, &linger, len);
}
