#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_scope_id; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct ip_mreq_source {int /*<<< orphan*/  imr_sourceaddr; int /*<<< orphan*/  imr_multiaddr; int /*<<< orphan*/  gsr_group; int /*<<< orphan*/  gsr_source; int /*<<< orphan*/  gsr_interface; } ;
struct group_source_req {int /*<<< orphan*/  imr_sourceaddr; int /*<<< orphan*/  imr_multiaddr; int /*<<< orphan*/  gsr_group; int /*<<< orphan*/  gsr_source; int /*<<< orphan*/  gsr_interface; } ;
typedef  scalar_t__ socklen_t ;
typedef  int /*<<< orphan*/  imr ;
typedef  int /*<<< orphan*/  gsr ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int /*<<< orphan*/  IP_ADD_SOURCE_MEMBERSHIP ; 
 int /*<<< orphan*/  MCAST_JOIN_SOURCE_GROUP ; 
 int SOL_IP ; 
 int SOL_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sockaddr const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_mreq_source*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,struct sockaddr const*,scalar_t__) ; 
 int /*<<< orphan*/  net_errno ; 
 scalar_t__ FUNC6 (int,int,int /*<<< orphan*/ ,struct ip_mreq_source*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (vlc_object_t *obj, int fd,
                     const struct sockaddr *src, socklen_t srclen,
                     const struct sockaddr *grp, socklen_t grplen)
{
/* MCAST_JOIN_SOURCE_GROUP was introduced to OS X in v10.7, but it doesn't work,
 * so ignore it to use the same code path as on 10.5 or 10.6 */
#if defined (MCAST_JOIN_SOURCE_GROUP) && !defined (__APPLE__)
    /* Family-agnostic Source-Specific Multicast join */
    int level;
    struct group_source_req gsr;

    memset (&gsr, 0, sizeof (gsr));
    gsr.gsr_interface = var_GetIfIndex (obj);

    switch (grp->sa_family)
    {
#ifdef AF_INET6
        case AF_INET6:
        {
            const struct sockaddr_in6 *g6 = (const struct sockaddr_in6 *)grp;

            level = SOL_IPV6;
            assert(grplen >= (socklen_t)sizeof (struct sockaddr_in6));
            if (g6->sin6_scope_id != 0)
                gsr.gsr_interface = g6->sin6_scope_id;
            break;
        }
#endif
        case AF_INET:
            level = SOL_IP;
            break;
        default:
            errno = EAFNOSUPPORT;
            return -1;
    }

    assert(grplen <= (socklen_t)sizeof (gsr.gsr_group));
    memcpy (&gsr.gsr_source, src, srclen);
    assert(srclen <= (socklen_t)sizeof (gsr.gsr_source));
    memcpy (&gsr.gsr_group,  grp, grplen);
    if (setsockopt (fd, level, MCAST_JOIN_SOURCE_GROUP,
                    &gsr, sizeof (gsr)) == 0)
        return 0;

#else
    if (src->sa_family != grp->sa_family)
    {
        errno = EAFNOSUPPORT;
        return -1;
    }

    switch (grp->sa_family)
    {
# ifdef IP_ADD_SOURCE_MEMBERSHIP
        /* IPv4-specific API */
        case AF_INET:
        {
            struct ip_mreq_source imr;

            memset (&imr, 0, sizeof (imr));
            assert(grplen >= (socklen_t)sizeof (struct sockaddr_in));
            imr.imr_multiaddr = ((const struct sockaddr_in *)grp)->sin_addr;
            assert(srclen >= (socklen_t)sizeof (struct sockaddr_in));
            imr.imr_sourceaddr = ((const struct sockaddr_in *)src)->sin_addr;
            if (setsockopt (fd, SOL_IP, IP_ADD_SOURCE_MEMBERSHIP,
                            &imr, sizeof (imr)) == 0)
                return 0;
            break;
        }
# endif
        default:
            errno = EAFNOSUPPORT;
    }

#endif
    FUNC3 (obj, "cannot join source multicast group: %s",
             FUNC8(net_errno));
    FUNC4 (obj, "trying ASM instead of SSM...");
    return FUNC5 (obj, fd, grp, grplen);
}