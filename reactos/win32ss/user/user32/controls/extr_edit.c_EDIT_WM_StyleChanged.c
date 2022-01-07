
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_6__ {int style; } ;
struct TYPE_5__ {int styleNew; } ;
typedef TYPE_1__ STYLESTRUCT ;
typedef int LRESULT ;
typedef TYPE_2__ EDITSTATE ;
typedef int DWORD ;


 int ES_LOWERCASE ;
 int ES_MULTILINE ;
 int ES_NUMBER ;
 int ES_UPPERCASE ;
 int ES_WANTRETURN ;
 scalar_t__ GWL_EXSTYLE ;
 scalar_t__ GWL_STYLE ;
 int WARN (char*,scalar_t__) ;

__attribute__((used)) static LRESULT EDIT_WM_StyleChanged ( EDITSTATE *es, WPARAM which, const STYLESTRUCT *style)
{
        if (GWL_STYLE == which) {
                DWORD style_change_mask;
                DWORD new_style;



                style_change_mask = ES_UPPERCASE | ES_LOWERCASE |
                                    ES_NUMBER;
                if (es->style & ES_MULTILINE)
                        style_change_mask |= ES_WANTRETURN;

                new_style = style->styleNew & style_change_mask;





                if (new_style & ES_NUMBER) {
                        ;
                } else if (new_style & ES_LOWERCASE) {
                        new_style &= ~ES_UPPERCASE;
                }

                es->style = (es->style & ~style_change_mask) | new_style;
        } else if (GWL_EXSTYLE == which) {
                ;
        } else {
                WARN ("Invalid style change %ld\n",which);
        }

        return 0;
}
