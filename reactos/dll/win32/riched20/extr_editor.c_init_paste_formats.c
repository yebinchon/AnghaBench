
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cfFormat; } ;
struct paste_format {scalar_t__ name; TYPE_1__ fmt; } ;


 scalar_t__ RegisterClipboardFormatW (scalar_t__) ;
 struct paste_format* paste_formats ;

__attribute__((used)) static void init_paste_formats(void)
{
    struct paste_format *format;
    static int done;

    if (!done)
    {
        for (format = paste_formats; format->fmt.cfFormat; format++)
        {
            if (format->name)
                format->fmt.cfFormat = RegisterClipboardFormatW( format->name );
        }
        done = 1;
    }
}
