
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int evutil_socket_t ;


 scalar_t__ AF_INET ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ connect (int,struct sockaddr const*,int) ;
 int createSocket (scalar_t__,int) ;
 int evutil_closesocket (int) ;
 scalar_t__ sockerrno ;

evutil_socket_t
ccnet_net_open_tcp (const struct sockaddr *sa, int nonblock)
{
    evutil_socket_t s;
    int sa_len;

    if( (s = createSocket(sa->sa_family, nonblock)) < 0 )
        return -1;


    if (sa->sa_family == AF_INET)
        sa_len = sizeof (struct sockaddr_in);
    else
        sa_len = sizeof (struct sockaddr_in6);
    if( (connect(s, sa, sa_len) < 0)



        && (sockerrno != EINPROGRESS) )
    {
        evutil_closesocket(s);
        s = -1;
    }

    return s;
}
