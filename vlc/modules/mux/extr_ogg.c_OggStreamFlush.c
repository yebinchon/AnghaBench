
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int sout_mux_t ;
typedef int ogg_stream_state ;
typedef int block_t ;


 int * OggStreamGetPage (int *,int *,int ,int) ;

__attribute__((used)) static block_t *OggStreamFlush( sout_mux_t *p_mux,
                                ogg_stream_state *p_os, vlc_tick_t i_pts )
{
    return OggStreamGetPage( p_mux, p_os, i_pts, 1 );
}
