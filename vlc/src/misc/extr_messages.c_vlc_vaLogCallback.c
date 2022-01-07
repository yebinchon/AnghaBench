
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vlc_logger_t ;
typedef int vlc_log_t ;
typedef int va_list ;
struct TYPE_5__ {int (* log ) (TYPE_2__*,int,int const*,char const*,int ) ;} ;


 int stub1 (TYPE_2__*,int,int const*,char const*,int ) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void vlc_vaLogCallback(vlc_logger_t *logger, int type,
                              const vlc_log_t *item, const char *format,
                              va_list ap)
{
    if (logger != ((void*)0)) {
        int canc = vlc_savecancel();

        logger->ops->log(logger, type, item, format, ap);
        vlc_restorecancel(canc);
    }
}
