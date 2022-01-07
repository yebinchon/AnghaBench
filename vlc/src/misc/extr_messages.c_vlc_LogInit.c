
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_logger {int dummy; } ;
struct TYPE_5__ {int logger; } ;
struct TYPE_6__ {TYPE_1__ obj; } ;
typedef TYPE_2__ libvlc_int_t ;


 int VLC_OBJECT (TYPE_2__*) ;
 struct vlc_logger discard_log ;
 struct vlc_logger* vlc_LogModuleCreate (int ) ;
 int vlc_LogSwitch (int ,struct vlc_logger*) ;

void vlc_LogInit(libvlc_int_t *vlc)
{
    struct vlc_logger *logger = vlc_LogModuleCreate(VLC_OBJECT(vlc));
    if (logger == ((void*)0))
        logger = &discard_log;

    vlc_LogSwitch(vlc->obj.logger, logger);
}
