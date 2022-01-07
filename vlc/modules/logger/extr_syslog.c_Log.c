
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_module; int * psz_header; } ;
typedef TYPE_1__ vlc_log_t ;
typedef int va_list ;


 int free (char*) ;
 int* priorities ;
 int syslog (int,char*,int ,char*,...) ;
 int vasprintf (char**,char const*,int ) ;

__attribute__((used)) static void Log(void *opaque, int type, const vlc_log_t *meta,
                const char *format, va_list ap)
{
    static const char default_msg[] = "message lost";
    char *str;
    int priority = priorities[type];

    if (vasprintf(&str, format, ap) == -1)
        str = (char *)default_msg;

    if (meta->psz_header != ((void*)0))
        syslog(priority, "[%s] %s: %s", meta->psz_header, meta->psz_module,
               str);
    else
        syslog(priority, "%s: %s", meta->psz_module, str);

    if (str != default_msg)
        free(str);
    (void) opaque;
}
