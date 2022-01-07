
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int * psz_token; scalar_t__ psz_file_template; } ;
typedef TYPE_2__ filter_sys_t ;


 size_t SVG_TEMPLATE_BODY_TOKEN_L ;
 int VLC_UNUSED (int) ;
 scalar_t__ asprintf (char**,char const*,char const*,...) ;

__attribute__((used)) static char *svg_GetDocument( filter_t *p_filter, int i_width, int i_height, const char *psz_body )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    char *psz_result;
    VLC_UNUSED(i_width);VLC_UNUSED(i_height);

    if( p_sys->psz_file_template )
    {
        if( asprintf( &psz_result, "%s%s%s",
                      p_sys->psz_file_template,
                      psz_body,
                      &p_sys->psz_token[SVG_TEMPLATE_BODY_TOKEN_L] ) < 0 )
            psz_result = ((void*)0);
    }
    else
    {


        const char *psz_temp = "<?xml version='1.0' encoding='UTF-8' standalone='no'?>"
                    "<svg preserveAspectRatio='xMinYMin meet'>"
                    "<rect fill='none' width='100%%' height='100%%'></rect>"
                    "<text fill='white' font-family='sans-serif' font-size='32px'>%s</text>"
                    "</svg>";
        if( asprintf( &psz_result, psz_temp, psz_body ) < 0 )
            psz_result = ((void*)0);
    }

    return psz_result;
}
