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
typedef  int /*<<< orphan*/  hlim ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int IPV6_MULTICAST_HOPS ; 
 int IP_MULTICAST_TTL ; 
 int SOL_IP ; 
 int SOL_IPV6 ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_errno ; 
 scalar_t__ FUNC3 (int,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( vlc_object_t *p_this,
                                 int fd, int family, int hlim )
{
    int proto, cmd;

    /* There is some confusion in the world whether IP_MULTICAST_TTL
     * takes a byte or an int as an argument.
     * BSD seems to indicate byte so we are going with that and use
     * int as a fallback to be safe */
    switch( family )
    {
#ifdef IP_MULTICAST_TTL
        case AF_INET:
            proto = SOL_IP;
            cmd = IP_MULTICAST_TTL;
            break;
#endif

#ifdef IPV6_MULTICAST_HOPS
        case AF_INET6:
            proto = SOL_IPV6;
            cmd = IPV6_MULTICAST_HOPS;
            break;
#endif

        default:
            errno = EAFNOSUPPORT;
            FUNC2( p_this, "%s", FUNC4(EAFNOSUPPORT) );
            return VLC_EGENERIC;
    }

    if( FUNC3( fd, proto, cmd, &hlim, sizeof( hlim ) ) < 0 )
    {
        /* BSD compatibility */
        unsigned char buf;

        FUNC0( p_this, "cannot set hop limit (%d): %s", hlim,
                 FUNC4(net_errno) );
        buf = (unsigned char)(( hlim > 255 ) ? 255 : hlim);
        if( FUNC3( fd, proto, cmd, &buf, sizeof( buf ) ) )
        {
            FUNC1( p_this, "cannot set hop limit (%d): %s", hlim,
                     FUNC4(net_errno) );
            return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}