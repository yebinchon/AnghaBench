
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int resource; } ;
typedef TYPE_2__ access_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ vlc_http_file_seek (int ,int ) ;

__attribute__((used)) static int FileSeek(stream_t *access, uint64_t pos)
{
    access_sys_t *sys = access->p_sys;

    if (vlc_http_file_seek(sys->resource, pos))
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
