
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int * p_sys; int * pf_seek; int pf_block; int * pf_read; int pf_control; int psz_location; } ;
typedef TYPE_1__ stream_t ;
typedef int imem_sys_t ;


 int Block ;
 int CloseCommon (int *) ;
 int ControlAccess ;
 scalar_t__ OpenCommon (int *,int **,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int var_InheritInteger (int *,char*) ;

__attribute__((used)) static int OpenAccess(vlc_object_t *object)
{
    stream_t *access = (stream_t *)object;
    imem_sys_t *sys;

    if (OpenCommon(object, &sys, access->psz_location))
        return VLC_EGENERIC;

    if (var_InheritInteger(object, "imem-cat") != 4) {
        CloseCommon(sys);
        return VLC_EGENERIC;
    }


    access->pf_control = ControlAccess;
    access->pf_read = ((void*)0);
    access->pf_block = Block;
    access->pf_seek = ((void*)0);
    access->p_sys = sys;

    return VLC_SUCCESS;
}
