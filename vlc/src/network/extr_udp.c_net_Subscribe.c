
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct ipv6_mreq {int imr_multiaddr; int ipv6mr_interface; int ipv6mr_multiaddr; int gr_group; int gr_interface; } ;
struct ip_mreq {int imr_multiaddr; int ipv6mr_interface; int ipv6mr_multiaddr; int gr_group; int gr_interface; } ;
struct group_req {int imr_multiaddr; int ipv6mr_interface; int ipv6mr_multiaddr; int gr_group; int gr_interface; } ;
typedef scalar_t__ socklen_t ;
typedef int ipv6mr ;
typedef int imr ;
typedef int gr ;




 int EAFNOSUPPORT ;
 int IPV6_JOIN_GROUP ;
 int IP_ADD_MEMBERSHIP ;
 int MCAST_JOIN_GROUP ;
 int SOL_IP ;
 int SOL_IPV6 ;
 int assert (int) ;
 int errno ;
 int memcpy (int *,struct sockaddr const*,scalar_t__) ;
 int memset (struct ipv6_mreq*,int ,int) ;
 int msg_Err (int *,char*,int ) ;
 int net_errno ;
 scalar_t__ setsockopt (int,int,int ,struct ipv6_mreq*,int) ;
 int var_GetIfIndex (int *) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int net_Subscribe(vlc_object_t *obj, int fd,
                         const struct sockaddr *grp, socklen_t grplen)
{
    switch (grp->sa_family)
    {
        default:
            errno = EAFNOSUPPORT;
    }


    msg_Err (obj, "cannot join multicast group: %s",
             vlc_strerror_c(net_errno));
    return -1;
}
