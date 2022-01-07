
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int * psz_name; int b_allow_fmt_out_change; } ;
typedef TYPE_1__ filter_t ;


 int Activate (TYPE_1__*,int ) ;
 int BuildFilterChain ;
 int VLC_EGENERIC ;
 int VLC_VAR_INTEGER ;
 int var_Create (TYPE_1__*,char*,int ) ;
 int var_Destroy (TYPE_1__*,char*) ;
 scalar_t__ var_Type (int ,char*) ;
 int vlc_object_parent (TYPE_1__*) ;

__attribute__((used)) static int ActivateFilter( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;

    if( !p_filter->b_allow_fmt_out_change || p_filter->psz_name == ((void*)0) )
        return VLC_EGENERIC;

    if( var_Type( vlc_object_parent(p_filter), "chain-filter-level" ) != 0 )
        return VLC_EGENERIC;

    var_Create( p_filter, "chain-filter-level", VLC_VAR_INTEGER );
    int i_ret = Activate( p_filter, BuildFilterChain );
    var_Destroy( p_filter, "chain-filter-level" );

    return i_ret;
}
