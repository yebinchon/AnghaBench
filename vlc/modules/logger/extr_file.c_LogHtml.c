
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int verbosity; int * stream; } ;
typedef TYPE_1__ vlc_logger_sys_t ;
struct TYPE_5__ {char* psz_module; } ;
typedef TYPE_2__ vlc_log_t ;
typedef int va_list ;
typedef int FILE ;


 int flockfile (int *) ;
 int fprintf (int *,char*,char*,int,unsigned int const) ;
 int fputs (char*,int *) ;
 int funlockfile (int *) ;
 int* msg_type ;
 int vfprintf (int *,char const*,int ) ;

__attribute__((used)) static void LogHtml(void *opaque, int type, const vlc_log_t *meta,
                    const char *format, va_list ap)
{
    static const unsigned color[4] = {
        0xffffff, 0xff6666, 0xffff66, 0xaaaaaa,
    };
    vlc_logger_sys_t *sys = opaque;
    FILE *stream = sys->stream;

    if (sys->verbosity < type)
        return;

    flockfile(stream);
    fprintf(stream, "%s%s: <span style=\"color: #%06x\">",
            meta->psz_module, msg_type[type], color[type]);

    vfprintf(stream, format, ap);
    fputs("</span>\n", stream);
    funlockfile(stream);
}
