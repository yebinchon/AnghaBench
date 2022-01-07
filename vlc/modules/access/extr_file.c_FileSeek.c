
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ off_t ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_2__ access_sys_t ;


 int SEEK_SET ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ lseek (int ,int ,int ) ;

__attribute__((used)) static int FileSeek (stream_t *p_access, uint64_t i_pos)
{
    access_sys_t *sys = p_access->p_sys;

    if (lseek(sys->fd, i_pos, SEEK_SET) == (off_t)-1)
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
