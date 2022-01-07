
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {void* i_time_offset; } ;
typedef TYPE_2__ seekpoint_t ;
struct TYPE_12__ {int i_seekpoint; int * seekpoint; void* i_length; } ;
typedef TYPE_3__ input_title_t ;
struct TYPE_13__ {unsigned int chapter_count; TYPE_1__* chapters; int duration; } ;
struct TYPE_10__ {int start; } ;
typedef TYPE_4__ BLURAY_TITLE_INFO ;


 void* FROM_SCALE_NZ (int ) ;
 int TAB_APPEND (int,int *,TYPE_2__*) ;
 int TAB_CLEAN (int,int *) ;
 scalar_t__ blurayTitleIsRepeating (TYPE_4__*,int,int) ;
 int vlc_seekpoint_Delete (int ) ;
 TYPE_2__* vlc_seekpoint_New () ;

__attribute__((used)) static void blurayUpdateTitleInfo(input_title_t *t, BLURAY_TITLE_INFO *title_info)
{
    t->i_length = FROM_SCALE_NZ(title_info->duration);

    for (int i = 0; i < t->i_seekpoint; i++)
        vlc_seekpoint_Delete( t->seekpoint[i] );
    TAB_CLEAN(t->i_seekpoint, t->seekpoint);


    if(blurayTitleIsRepeating(title_info, 50, 90))
        return;

    for (unsigned int j = 0; j < title_info->chapter_count; j++) {
        seekpoint_t *s = vlc_seekpoint_New();
        if (!s) {
            break;
        }
        s->i_time_offset = FROM_SCALE_NZ(title_info->chapters[j].start);

        TAB_APPEND(t->i_seekpoint, t->seekpoint, s);
    }
}
