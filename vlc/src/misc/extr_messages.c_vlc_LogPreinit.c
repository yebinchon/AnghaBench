
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_logger_t ;
struct vlc_logger {int dummy; } ;
struct TYPE_5__ {int * logger; } ;
struct TYPE_6__ {TYPE_1__ obj; } ;
typedef TYPE_2__ libvlc_int_t ;


 int VLC_OBJECT (TYPE_2__*) ;
 scalar_t__ unlikely (int ) ;
 struct vlc_logger* vlc_LogEarlyOpen (int *) ;
 int vlc_LogSpam (int ) ;
 int vlc_LogSwitch (int *,struct vlc_logger*) ;
 int * vlc_LogSwitchCreate () ;

int vlc_LogPreinit(libvlc_int_t *vlc)
{
    vlc_logger_t *logger = vlc_LogSwitchCreate();
    if (unlikely(logger == ((void*)0)))
        return -1;
    vlc->obj.logger = logger;

    struct vlc_logger *early = vlc_LogEarlyOpen(logger);
    if (early != ((void*)0)) {
        vlc_LogSwitch(logger, early);
        vlc_LogSpam(VLC_OBJECT(vlc));
    }
    return 0;
}
