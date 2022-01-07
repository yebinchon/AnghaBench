
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int logger; } ;
typedef TYPE_1__ vlc_object_t ;
typedef int va_list ;


 char* vlc_object_typename (TYPE_1__*) ;
 int vlc_vaLog (int *,int,char const*,char const*,char const*,unsigned int,char const*,char const*,int ) ;

void vlc_object_vaLog(vlc_object_t *obj, int prio, const char *module,
                      const char *file, unsigned line, const char *func,
                      const char *format, va_list ap)
{
    if (obj == ((void*)0))
        return;

    const char *typename = vlc_object_typename(obj);

    if (typename == ((void*)0))
        typename = "generic";

    vlc_vaLog(&obj->logger, prio, typename, module, file, line, func,
              format, ap);
}
