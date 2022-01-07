
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int hlim ;
typedef int buf ;




 int EAFNOSUPPORT ;
 int IPV6_MULTICAST_HOPS ;
 int IP_MULTICAST_TTL ;
 int SOL_IP ;
 int SOL_IPV6 ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int errno ;
 int msg_Dbg (int *,char*,int,int ) ;
 int msg_Err (int *,char*,int,int ) ;
 int msg_Warn (int *,char*,int ) ;
 int net_errno ;
 scalar_t__ setsockopt (int,int,int,...) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int net_SetMcastHopLimit( vlc_object_t *p_this,
                                 int fd, int family, int hlim )
{
    int proto, cmd;





    switch( family )
    {
        default:
            errno = EAFNOSUPPORT;
            msg_Warn( p_this, "%s", vlc_strerror_c(EAFNOSUPPORT) );
            return VLC_EGENERIC;
    }

    if( setsockopt( fd, proto, cmd, &hlim, sizeof( hlim ) ) < 0 )
    {

        unsigned char buf;

        msg_Dbg( p_this, "cannot set hop limit (%d): %s", hlim,
                 vlc_strerror_c(net_errno) );
        buf = (unsigned char)(( hlim > 255 ) ? 255 : hlim);
        if( setsockopt( fd, proto, cmd, &buf, sizeof( buf ) ) )
        {
            msg_Err( p_this, "cannot set hop limit (%d): %s", hlim,
                     vlc_strerror_c(net_errno) );
            return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}
