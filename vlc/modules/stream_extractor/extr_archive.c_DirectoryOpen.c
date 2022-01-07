
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int pf_readdir; int * p_sys; int source; } ;
typedef TYPE_1__ stream_directory_t ;
typedef int private_sys_t ;


 int * CommonOpen (int *,int ) ;
 int ReadDir ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static int DirectoryOpen( vlc_object_t* p_obj )
{
    stream_directory_t* p_directory = (void*)p_obj;
    private_sys_t* p_sys = CommonOpen( p_obj, p_directory->source );

    if( p_sys == ((void*)0) )
        return VLC_EGENERIC;

    p_directory->p_sys = p_sys;
    p_directory->pf_readdir = ReadDir;

    return VLC_SUCCESS;
}
