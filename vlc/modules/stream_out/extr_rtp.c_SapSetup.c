
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_7__ {scalar_t__ i_es; int psz_destination; scalar_t__* psz_sdp; int * p_session; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int VLC_SUCCESS ;
 int * sout_AnnounceRegisterSDP (TYPE_1__*,scalar_t__*,int ) ;
 int sout_AnnounceUnRegister (TYPE_1__*,int *) ;

__attribute__((used)) static int SapSetup( sout_stream_t *p_stream )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;


    if( p_sys->p_session != ((void*)0))
    {
        sout_AnnounceUnRegister( p_stream, p_sys->p_session);
        p_sys->p_session = ((void*)0);
    }

    if( p_sys->i_es > 0 && p_sys->psz_sdp && *p_sys->psz_sdp )
        p_sys->p_session = sout_AnnounceRegisterSDP( p_stream,
                                                     p_sys->psz_sdp,
                                                     p_sys->psz_destination );

    return VLC_SUCCESS;
}
