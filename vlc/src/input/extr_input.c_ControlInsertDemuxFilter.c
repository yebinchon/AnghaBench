
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_3__ {int * p_demux; } ;
typedef TYPE_1__ input_source_t ;
typedef int demux_t ;
struct TYPE_4__ {TYPE_1__* master; } ;


 int * demux_FilterChainNew (int *,char const*) ;
 TYPE_2__* input_priv (int *) ;
 int msg_Dbg (int *,char*,char const*) ;

__attribute__((used)) static void ControlInsertDemuxFilter( input_thread_t* p_input, const char* psz_demux_chain )
{
    input_source_t *p_inputSource = input_priv(p_input)->master;
    demux_t *p_filtered_demux = demux_FilterChainNew( p_inputSource->p_demux, psz_demux_chain );
    if ( p_filtered_demux != ((void*)0) )
        p_inputSource->p_demux = p_filtered_demux;
    else if ( psz_demux_chain != ((void*)0) )
        msg_Dbg(p_input, "Failed to create demux filter %s", psz_demux_chain);
}
