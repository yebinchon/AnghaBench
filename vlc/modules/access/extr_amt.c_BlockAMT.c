
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct pollfd {int events; int fd; } ;
struct TYPE_10__ {TYPE_3__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ ssize_t ;
typedef int socklen_t ;
struct TYPE_11__ {scalar_t__* p_buffer; int i_buffer; int i_flags; } ;
typedef TYPE_2__ block_t ;
struct TYPE_12__ {scalar_t__ mtu; int sAMT; scalar_t__ tryAMT; int timeout; int fd; } ;
typedef TYPE_3__ access_sys_t ;


 scalar_t__ AMT_HDR_LEN ;
 scalar_t__ AMT_MULT_DATA ;
 int BLOCK_FLAG_CORRUPTED ;
 scalar_t__ IP_HDR_LEN ;
 int POLLIN ;
 scalar_t__ UDP_HDR_LEN ;
 TYPE_2__* block_Alloc (scalar_t__) ;
 int block_Release (TYPE_2__*) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 int open_amt_tunnel (TYPE_1__*) ;
 scalar_t__ recv (int ,scalar_t__*,scalar_t__,int ) ;
 scalar_t__ recvfrom (int ,char*,scalar_t__,int ,struct sockaddr*,int*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_poll_i11e (struct pollfd*,int,int ) ;

__attribute__((used)) static block_t *BlockAMT(stream_t *p_access, bool *restrict eof)
{
    access_sys_t *sys = p_access->p_sys;
    ssize_t len = 0, shift = 0, tunnel = IP_HDR_LEN + UDP_HDR_LEN + AMT_HDR_LEN;


    block_t *pkt = block_Alloc( sys->mtu + tunnel );
    if ( unlikely( pkt == ((void*)0) ) )
        return ((void*)0);

    struct pollfd ufd[1];

    if( sys->tryAMT )
        ufd[0].fd = sys->sAMT;
    else
        ufd[0].fd = sys->fd;
    ufd[0].events = POLLIN;

    switch (vlc_poll_i11e(ufd, 1, sys->timeout))
    {
        case 0:
            if( !sys->tryAMT )
            {
                msg_Err(p_access, "Native multicast receive time-out");
                if( !open_amt_tunnel( p_access ) )
                    goto error;
                break;
            }
            else
            {
                *eof = 1;
            }

        case -1:
            goto error;
    }


    if( sys->tryAMT )
    {

        len = recv( sys->sAMT, pkt->p_buffer, sys->mtu + tunnel, 0 );


        if( len < 0 || *(pkt->p_buffer) != AMT_MULT_DATA )
            goto error;


        shift += tunnel;


        if( len < tunnel )
        {
            msg_Err(p_access, "%zd bytes packet truncated (MTU was %zd)", len, sys->mtu);
            pkt->i_flags |= BLOCK_FLAG_CORRUPTED;
        }


        else
        {
            len -= tunnel;
        }
    }

    else
    {
        struct sockaddr temp;
        socklen_t temp_size = sizeof( struct sockaddr );
        len = recvfrom( sys->sAMT, (char *)pkt->p_buffer, sys->mtu + tunnel, 0, (struct sockaddr*)&temp, &temp_size );
    }


    pkt->p_buffer += shift;
    pkt->i_buffer -= shift;

    return pkt;

error:
    block_Release( pkt );
    return ((void*)0);
}
