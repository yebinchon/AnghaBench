
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fmt_in; int fmt_out; } ;
typedef TYPE_1__ filter_t ;
typedef int es_format_t ;


 int CreateChain (TYPE_1__*,int *) ;
 int CreateResizeChromaChain (TYPE_1__*,int *) ;
 int EsFormatMergeSize (int *,int *,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int es_format_Clean (int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static int BuildChromaResize( filter_t *p_filter )
{
    es_format_t fmt_mid;
    int i_ret;


    msg_Dbg( p_filter, "Trying to build resize+chroma" );
    EsFormatMergeSize( &fmt_mid, &p_filter->fmt_in, &p_filter->fmt_out );
    i_ret = CreateResizeChromaChain( p_filter, &fmt_mid );
    es_format_Clean( &fmt_mid );

    if( i_ret == VLC_SUCCESS )
        return VLC_SUCCESS;


    msg_Dbg( p_filter, "Trying to build chroma+resize" );
    EsFormatMergeSize( &fmt_mid, &p_filter->fmt_out, &p_filter->fmt_in );
    i_ret = CreateChain( p_filter, &fmt_mid );
    es_format_Clean( &fmt_mid );
    if( i_ret == VLC_SUCCESS )
        return VLC_SUCCESS;

    return VLC_EGENERIC;
}
