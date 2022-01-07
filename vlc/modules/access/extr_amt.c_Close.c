
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_9__ {scalar_t__ s_addr; } ;
struct TYPE_8__ {TYPE_2__ sin_addr; } ;
struct TYPE_11__ {int fd; int sAMT; int sQuery; int relay; int relayDisco; TYPE_1__ mcastSrcAddr; scalar_t__ tryAMT; int updateTimer; } ;
typedef TYPE_4__ access_sys_t ;


 int amt_leaveASM_group (TYPE_3__*) ;
 int amt_leaveSSM_group (TYPE_3__*) ;
 int amt_send_mem_update (TYPE_3__*,int ,int) ;
 int free (int ) ;
 int net_Close (int) ;
 int vlc_timer_destroy (int ) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    stream_t *p_access = (stream_t*)p_this;
    access_sys_t *sys = p_access->p_sys;

    vlc_timer_destroy( sys->updateTimer );


    if ( sys->tryAMT )
    {

        if( sys->mcastSrcAddr.sin_addr.s_addr )
            amt_leaveSSM_group( p_access );
        else
            amt_leaveASM_group( p_access );


        amt_send_mem_update( p_access, sys->relayDisco, 1 );
    }
    free( sys->relay );

    net_Close( sys->fd );
    if( sys->sAMT != -1 )
        net_Close( sys->sAMT );
    if( sys->sQuery != -1 )
        net_Close( sys->sQuery );
}
