
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int imem_sys_t ;
struct TYPE_2__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ demux_t ;


 int CloseCommon (int *) ;

__attribute__((used)) static void CloseDemux(vlc_object_t *object)
{
    demux_t *demux = (demux_t *)object;

    CloseCommon((imem_sys_t*)demux->p_sys);
}
