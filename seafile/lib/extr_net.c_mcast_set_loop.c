
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int flag ;
typedef int evutil_socket_t ;




 int EAFNOSUPPORT ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_MULTICAST_LOOP ;
 int IP_MULTICAST_LOOP ;
 int errno ;
 int setsockopt (int ,int ,int ,int*,int) ;
 int sockfd_to_family (int ) ;

int
mcast_set_loop(evutil_socket_t sockfd, int onoff)
{


 switch (sockfd_to_family(sockfd)) {
 case 129: {
  u_char flag;

  flag = onoff;
  return(setsockopt(sockfd, IPPROTO_IP, IP_MULTICAST_LOOP,
        &flag, sizeof(flag)));
 }
 default:
  errno = EAFNOSUPPORT;
  return(-1);
 }




}
