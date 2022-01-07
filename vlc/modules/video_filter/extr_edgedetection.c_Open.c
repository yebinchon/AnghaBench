
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int * p_sys; int pf_video_filter; int fmt_in; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_7__ {TYPE_1__* sys; int * video; } ;
typedef TYPE_2__ filter_owner_t ;
typedef int filter_chain_t ;


 int Filter ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int filter_chain_AppendFromString (int *,char*) ;
 int filter_chain_Delete (int *) ;
 int * filter_chain_NewVideo (TYPE_1__*,int,TYPE_2__*) ;
 int filter_chain_Reset (int *,int *,int *) ;
 int filter_video_edge_cbs ;
 int msg_Err (TYPE_1__*,char*) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    int i_ret;
    filter_t *p_filter = (filter_t *)p_this;
    filter_owner_t owner = {
        .video = &filter_video_edge_cbs,
        .sys = p_filter,
    };

    filter_chain_t *sys = filter_chain_NewVideo( p_filter, 1, &owner );
    if ( sys == ((void*)0))
    {
        msg_Err( p_filter, "Could not allocate filter chain" );
        return VLC_EGENERIC;
    }

    filter_chain_Reset( sys, &p_filter->fmt_in, &p_filter->fmt_in);

    i_ret = filter_chain_AppendFromString( sys, "adjust{saturation=0}" );
    if ( i_ret == -1 )
    {
        msg_Err( p_filter, "Could not append filter to filter chain" );
        filter_chain_Delete( sys );
        return VLC_EGENERIC;
    }

    i_ret = filter_chain_AppendFromString( sys, "gaussianblur{deviation=1}" );
    if ( i_ret == -1 )
    {
        msg_Err( p_filter, "Could not append filter to filter chain" );
        filter_chain_Delete( sys );
        return VLC_EGENERIC;
    }

    p_filter->pf_video_filter = Filter;
    p_filter->p_sys = sys;
    return VLC_SUCCESS;
}
