
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_4__ {TYPE_2__* master; } ;
typedef TYPE_1__ input_thread_private_t ;
struct TYPE_5__ {scalar_t__ i_title; int b_title_demux; int title; int i_seekpoint_offset; int i_title_offset; int p_demux; } ;
typedef TYPE_2__ input_source_t ;


 int DEMUX_GET_TITLE_INFO ;
 int InitTitle (int *,int) ;
 int TAB_INIT (scalar_t__,int ) ;
 scalar_t__ demux_Control (int ,int ,int *,scalar_t__*,int *,int *) ;
 TYPE_1__* input_priv (int *) ;

__attribute__((used)) static void UpdateTitleListfromDemux( input_thread_t *p_input )
{
    input_thread_private_t *priv = input_priv(p_input);
    input_source_t *in = priv->master;


    bool had_titles = in->i_title > 0;


    if( demux_Control( in->p_demux, DEMUX_GET_TITLE_INFO,
                       &in->title, &in->i_title,
                       &in->i_title_offset, &in->i_seekpoint_offset ) )
        TAB_INIT( in->i_title, in->title );
    else
        in->b_title_demux = 1;

    InitTitle( p_input, had_titles );
}
