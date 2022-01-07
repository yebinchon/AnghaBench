
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {TYPE_2__** pp_segment_last; scalar_t__ p_style; } ;
typedef TYPE_1__ stl_sg_t ;
struct TYPE_5__ {struct TYPE_5__* p_next; int style; } ;


 char* FromCharset (char const*,scalar_t__*,scalar_t__) ;
 int free (char*) ;
 TYPE_2__* text_segment_New (char*) ;
 int text_style_Duplicate (scalar_t__) ;

__attribute__((used)) static void TextBufferFlush(stl_sg_t *p_group, uint8_t *p_buf, uint8_t *pi_buf,
                            const char *psz_charset)
{
    if(*pi_buf == 0)
        return;

    char *psz_utf8 = FromCharset(psz_charset, p_buf, *pi_buf);
    if(psz_utf8)
    {
        *p_group->pp_segment_last = text_segment_New(psz_utf8);
        if(*p_group->pp_segment_last)
        {
            if(p_group->p_style)
                (*p_group->pp_segment_last)->style = text_style_Duplicate(p_group->p_style);
            p_group->pp_segment_last = &((*p_group->pp_segment_last)->p_next);
        }
        free(psz_utf8);
    }

    *pi_buf = 0;
}
