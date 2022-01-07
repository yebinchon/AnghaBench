
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct sockaddr {int sa_family; } ;
struct sockaddr_in6 {struct sockaddr const sin6_addr; } ;
struct sockaddr_in {struct sockaddr const sin_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {TYPE_2__ s_addr; } ;
struct ipv6_mreq {scalar_t__ gr_interface; scalar_t__ ipv6mr_interface; TYPE_2__ ipv6mr_multiaddr; TYPE_2__ imr_interface; TYPE_1__ imr_multiaddr; TYPE_2__ gr_group; } ;
struct ip_mreq {scalar_t__ gr_interface; scalar_t__ ipv6mr_interface; TYPE_2__ ipv6mr_multiaddr; TYPE_2__ imr_interface; TYPE_1__ imr_multiaddr; TYPE_2__ gr_group; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifreq {int ifr_addr; int ifr_name; } ;
struct group_req {scalar_t__ gr_interface; scalar_t__ ipv6mr_interface; TYPE_2__ ipv6mr_multiaddr; TYPE_2__ imr_interface; TYPE_1__ imr_multiaddr; TYPE_2__ gr_group; } ;
typedef int socklen_t ;
typedef int req ;
typedef int mreq6 ;
typedef int mreq ;
typedef int evutil_socket_t ;




 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENXIO ;
 int IFNAMSIZ ;
 int INADDR_ANY ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_JOIN_GROUP ;
 int IP_ADD_MEMBERSHIP ;
 int MCAST_JOIN_GROUP ;
 int SIOCGIFADDR ;
 int errno ;
 int family_to_level (int) ;
 int htonl (int ) ;
 int * if_indextoname (scalar_t__,int ) ;
 scalar_t__ if_nametoindex (char const*) ;
 int ioctl (int ,int ,struct ifreq*) ;
 int memcpy (TYPE_2__*,struct sockaddr const*,int) ;
 int setsockopt (int ,int ,int ,struct ipv6_mreq*,int) ;
 int strncpy (int ,char const*,int ) ;

__attribute__((used)) static int
mcast_join(evutil_socket_t sockfd, const struct sockaddr *grp, socklen_t grplen,
     const char *ifname, u_int ifindex)
{
 switch (grp->sa_family) {
 case 129: {
  struct ip_mreq mreq;
  struct ifreq ifreq;

  memcpy(&mreq.imr_multiaddr.s_addr,
      &((const struct sockaddr_in *) grp)->sin_addr,
      sizeof(struct in_addr));

  if (ifindex > 0) {
   if (if_indextoname(ifindex, ifreq.ifr_name) == ((void*)0)) {
    errno = ENXIO;
    return(-1);
   }
   goto doioctl;
  } else if (ifname != ((void*)0)) {
   strncpy(ifreq.ifr_name, ifname, IFNAMSIZ);
doioctl:
   if (ioctl(sockfd, SIOCGIFADDR, &ifreq) < 0)
    return(-1);
   memcpy(&mreq.imr_interface,
       &((struct sockaddr_in *) &ifreq.ifr_addr)->sin_addr,
       sizeof(struct in_addr));
  } else
   mreq.imr_interface.s_addr = htonl(INADDR_ANY);

  return(setsockopt(sockfd, IPPROTO_IP, IP_ADD_MEMBERSHIP,
        &mreq, sizeof(mreq)));
 }
 default:
  errno = EAFNOSUPPORT;
  return(-1);
 }


    return -1;
}
