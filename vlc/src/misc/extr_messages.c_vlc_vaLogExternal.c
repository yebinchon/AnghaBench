
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_log_t ;
typedef int va_list ;
struct vlc_logger_external {int opaque; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* log ) (int ,int,int const*,char const*,int ) ;} ;


 int stub1 (int ,int,int const*,char const*,int ) ;

__attribute__((used)) static void vlc_vaLogExternal(void *d, int type, const vlc_log_t *item,
                              const char *format, va_list ap)
{
    struct vlc_logger_external *ext = d;

    ext->ops->log(ext->opaque, type, item, format, ap);
}
