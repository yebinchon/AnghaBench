
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_edits_count; int * p_edits; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;
typedef int mp4mux_edit_t ;


 scalar_t__ unlikely (int) ;
 int * vlc_reallocarray (int *,scalar_t__,int) ;

bool mp4mux_track_AddEdit(mp4mux_trackinfo_t *t, const mp4mux_edit_t *p_newedit)
{
    if(t->i_edits_count + 1 < t->i_edits_count)
        return 0;
    mp4mux_edit_t *p_realloc = vlc_reallocarray( t->p_edits,
                                                 t->i_edits_count + 1,
                                                 sizeof(*p_realloc) );
    if(unlikely(!p_realloc))
        return 0;

    t->p_edits = p_realloc;
    t->p_edits[t->i_edits_count++] = *p_newedit;

    return 1;
}
