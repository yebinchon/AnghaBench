
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {scalar_t__ es; int fmt; scalar_t__ b_configured; } ;
typedef TYPE_1__ ps_track_t ;
struct TYPE_6__ {int out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_7__ {int i_titles; int p_dvdread; scalar_t__ p_vmg_file; scalar_t__ p_vts_file; scalar_t__ p_title; int * titles; TYPE_1__* tk; } ;
typedef TYPE_3__ demux_sys_t ;


 int DVDClose (int ) ;
 int DVDCloseFile (scalar_t__) ;
 int PS_TK_COUNT ;
 int TAB_CLEAN (int,int *) ;
 int es_format_Clean (int *) ;
 int es_out_Del (int ,scalar_t__) ;
 int free (TYPE_3__*) ;
 int ifoClose (scalar_t__) ;
 int vlc_input_title_Delete (int ) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    for( int i = 0; i < PS_TK_COUNT; i++ )
    {
        ps_track_t *tk = &p_sys->tk[i];
        if( tk->b_configured )
        {
            es_format_Clean( &tk->fmt );
            if( tk->es ) es_out_Del( p_demux->out, tk->es );
        }
    }


    for( int i = 0; i < p_sys->i_titles; i++ )
        vlc_input_title_Delete( p_sys->titles[i] );
    TAB_CLEAN( p_sys->i_titles, p_sys->titles );


    if( p_sys->p_title ) DVDCloseFile( p_sys->p_title );
    if( p_sys->p_vts_file ) ifoClose( p_sys->p_vts_file );
    if( p_sys->p_vmg_file ) ifoClose( p_sys->p_vmg_file );
    DVDClose( p_sys->p_dvdread );

    free( p_sys );
}
