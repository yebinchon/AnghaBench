
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct demux_sys {size_t chapter_count; size_t chapter_gap; int null_names; int length; } ;
typedef size_t ssize_t ;
struct TYPE_9__ {TYPE_3__** seekpoint; int i_seekpoint; int * psz_name; int i_length; } ;
typedef TYPE_1__ input_title_t ;
struct TYPE_10__ {struct demux_sys* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_11__ {size_t i_time_offset; int psz_name; } ;


 int asprintf (int *,char*,size_t,...) ;
 TYPE_3__** vlc_alloc (size_t,int) ;
 int vlc_input_title_Delete (TYPE_1__*) ;
 TYPE_1__* vlc_input_title_New () ;
 TYPE_3__* vlc_seekpoint_New () ;

__attribute__((used)) static input_title_t *
CreateTitle(demux_t *demux, size_t idx)
{
    struct demux_sys *sys = demux->p_sys;

    input_title_t *t = vlc_input_title_New();
    if (!t)
        return ((void*)0);

    t->i_length = sys->length;
    if (!sys->null_names
     && asprintf(&t->psz_name, "Mock Title %zu", idx) == -1)
    {
        t->psz_name = ((void*)0);
        vlc_input_title_Delete(t);
        return ((void*)0);
    }
    t->seekpoint = vlc_alloc(sys->chapter_count, sizeof(*t->seekpoint));
    if (!t->seekpoint)
    {
        vlc_input_title_Delete(t);
        return ((void*)0);
    }

    for (ssize_t i = 0; i < sys->chapter_count; ++i)
    {
        t->seekpoint[i] = vlc_seekpoint_New();
        if (!t->seekpoint[i])
        {
            vlc_input_title_Delete(t);
            return ((void*)0);
        }
        t->i_seekpoint++;
        if (!sys->null_names
         && asprintf(&t->seekpoint[i]->psz_name, "Mock Chapter %zu-%zu", idx, i)
            == -1)
        {
            vlc_input_title_Delete(t);
            return ((void*)0);
        }
        t->seekpoint[i]->i_time_offset = i * sys->chapter_gap;
    }
    return t;
}
