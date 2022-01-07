
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; } ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_9__ {char const* psz_host; } ;
struct TYPE_12__ {int s_addr; } ;
struct TYPE_11__ {char* netbios_name; TYPE_2__ url; TYPE_6__ addr; int p_ns; } ;
typedef TYPE_4__ access_sys_t ;


 scalar_t__ AF_INET ;
 int NETBIOS_FILESERVER ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,int *,int *,struct addrinfo**) ;
 int inet_pton (scalar_t__,char const*,TYPE_6__*) ;
 int msg_Warn (TYPE_3__*,char*,char const*) ;
 char* netbios_ns_inverse (int ,int ) ;
 scalar_t__ netbios_ns_resolve (int ,char const*,int ,int *) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static int get_address( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->url.psz_host != ((void*)0) &&
        !inet_pton( AF_INET, p_sys->url.psz_host, &p_sys->addr ) )
    {

        struct addrinfo *p_info = ((void*)0);


        if( netbios_ns_resolve( p_sys->p_ns, p_sys->url.psz_host,
                                NETBIOS_FILESERVER,
                                &p_sys->addr.s_addr) == 0 )
        {
            strlcpy( p_sys->netbios_name, p_sys->url.psz_host, 16);
            return VLC_SUCCESS;
        }

        else if( getaddrinfo( p_sys->url.psz_host, ((void*)0), ((void*)0), &p_info ) == 0 )
        {
            if( p_info->ai_family == AF_INET )
            {
                struct sockaddr_in *in = (struct sockaddr_in *)p_info->ai_addr;
                p_sys->addr.s_addr = in->sin_addr.s_addr;
            }
            if( p_info->ai_family != AF_INET )
            {
                freeaddrinfo( p_info );
                return VLC_EGENERIC;
            }
            freeaddrinfo( p_info );
        }
        else
            return VLC_EGENERIC;
    }


    const char *psz_nbt = netbios_ns_inverse( p_sys->p_ns, p_sys->addr.s_addr );
    if( psz_nbt != ((void*)0) )
        strlcpy( p_sys->netbios_name, psz_nbt, 16 );
    else
    {
        msg_Warn( p_access, "Unable to get netbios name of %s",
            p_sys->url.psz_host );
        p_sys->netbios_name[0] = '\0';
    }

    return VLC_SUCCESS;
}
