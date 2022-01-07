
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint64_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int offset; } ;
typedef TYPE_2__ access_sys_t ;


 int SeekCommon (int *,TYPE_2__*,int ) ;
 int VLC_SUCCESS ;

__attribute__((used)) static int Seek( stream_t *p_access, uint64_t i_pos )
{
    access_sys_t *p_sys = p_access->p_sys;

    int val = SeekCommon( (vlc_object_t *)p_access, p_sys, i_pos );
    if( val )
        return val;

    p_sys->offset = i_pos;

    return VLC_SUCCESS;
}
