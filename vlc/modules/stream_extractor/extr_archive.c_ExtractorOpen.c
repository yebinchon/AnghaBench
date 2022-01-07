
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int pf_seek; int pf_control; int pf_read; int * p_sys; int identifier; int source; } ;
typedef TYPE_1__ stream_extractor_t ;
typedef int private_sys_t ;


 int CommonClose (int *) ;
 int * CommonOpen (int *,int ) ;
 int Control ;
 int Read ;
 int Seek ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ archive_seek_subentry (int *,int ) ;

__attribute__((used)) static int ExtractorOpen( vlc_object_t* p_obj )
{
    stream_extractor_t* p_extractor = (void*)p_obj;
    private_sys_t* p_sys = CommonOpen( p_obj, p_extractor->source );

    if( p_sys == ((void*)0) )
        return VLC_EGENERIC;

    if( archive_seek_subentry( p_sys, p_extractor->identifier ) )
    {
        CommonClose( p_sys );
        return VLC_EGENERIC;
    }

    p_extractor->p_sys = p_sys;
    p_extractor->pf_read = Read;
    p_extractor->pf_control = Control;
    p_extractor->pf_seek = Seek;

    return VLC_SUCCESS;
}
