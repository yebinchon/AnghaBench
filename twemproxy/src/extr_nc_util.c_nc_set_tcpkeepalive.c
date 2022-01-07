
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int setsockopt (int,int ,int ,int*,int) ;

int
nc_set_tcpkeepalive(int sd)
{
    int val = 1;
    return setsockopt(sd, SOL_SOCKET, SO_KEEPALIVE, &val, sizeof(val));
}
