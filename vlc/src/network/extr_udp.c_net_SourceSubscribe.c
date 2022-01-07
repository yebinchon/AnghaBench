
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct sockaddr_in6 {int sin6_scope_id; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct ip_mreq_source {int imr_sourceaddr; int imr_multiaddr; int gsr_group; int gsr_source; int gsr_interface; } ;
struct group_source_req {int imr_sourceaddr; int imr_multiaddr; int gsr_group; int gsr_source; int gsr_interface; } ;
typedef scalar_t__ socklen_t ;
typedef int imr ;
typedef int gsr ;




 int EAFNOSUPPORT ;
 int IP_ADD_SOURCE_MEMBERSHIP ;
 int MCAST_JOIN_SOURCE_GROUP ;
 int SOL_IP ;
 int SOL_IPV6 ;
 int assert (int) ;
 int errno ;
 int memcpy (int *,struct sockaddr const*,scalar_t__) ;
 int memset (struct ip_mreq_source*,int ,int) ;
 int msg_Err (int *,char*,int ) ;
 int msg_Warn (int *,char*) ;
 int net_Subscribe (int *,int,struct sockaddr const*,scalar_t__) ;
 int net_errno ;
 scalar_t__ setsockopt (int,int,int ,struct ip_mreq_source*,int) ;
 int var_GetIfIndex (int *) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int
net_SourceSubscribe (vlc_object_t *obj, int fd,
                     const struct sockaddr *src, socklen_t srclen,
                     const struct sockaddr *grp, socklen_t grplen)
{
    if (src->sa_family != grp->sa_family)
    {
        errno = EAFNOSUPPORT;
        return -1;
    }

    switch (grp->sa_family)
    {
        default:
            errno = EAFNOSUPPORT;
    }


    msg_Err (obj, "cannot join source multicast group: %s",
             vlc_strerror_c(net_errno));
    msg_Warn (obj, "trying ASM instead of SSM...");
    return net_Subscribe (obj, fd, grp, grplen);
}
