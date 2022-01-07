
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int align; int const vertical; } ;
struct TYPE_5__ {TYPE_1__ settings; } ;
typedef TYPE_2__ webvtt_dom_cue_t ;


 int SUBPICTURE_ALIGN_LEFT ;
 int SUBPICTURE_ALIGN_RIGHT ;





__attribute__((used)) static int GetCueTextAlignment( const webvtt_dom_cue_t *p_cue )
{
    switch( p_cue->settings.align )
    {
        case 130:
            return SUBPICTURE_ALIGN_LEFT;
        case 129:
            return SUBPICTURE_ALIGN_RIGHT;
        case 128:
            return (p_cue->settings.vertical == 129) ?
                     SUBPICTURE_ALIGN_RIGHT : SUBPICTURE_ALIGN_LEFT;
        case 131:
            return (p_cue->settings.vertical == 129) ?
                     SUBPICTURE_ALIGN_LEFT : SUBPICTURE_ALIGN_RIGHT;
        default:
            return 0;
    }
}
