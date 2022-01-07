
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ demux_sys_t ;


 int vlc_close (int ) ;

__attribute__((used)) static void CloseFile (demux_sys_t *sys)
{
    vlc_close (sys->fd);
}
