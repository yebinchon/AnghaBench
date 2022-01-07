
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {TYPE_2__* p_sys; int * pf_read; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_4__ {int fd; } ;
typedef TYPE_2__ access_sys_t ;


 int DirClose (int *) ;
 int vlc_close (int ) ;

void FileClose (vlc_object_t * p_this)
{
    stream_t *p_access = (stream_t*)p_this;

    if (p_access->pf_read == ((void*)0))
    {
        DirClose (p_this);
        return;
    }

    access_sys_t *p_sys = p_access->p_sys;

    vlc_close (p_sys->fd);
}
