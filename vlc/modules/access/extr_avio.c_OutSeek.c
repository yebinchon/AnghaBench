
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_5__ {int context; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
typedef int off_t ;


 int SEEK_SET ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ avio_seek (int ,int ,int ) ;

__attribute__((used)) static int OutSeek(sout_access_out_t *p_access, off_t i_pos)
{
    sout_access_out_sys_t *sys = p_access->p_sys;

    if (avio_seek(sys->context, i_pos, SEEK_SET) < 0)
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
