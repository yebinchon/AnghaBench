
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_es_id_t ;
struct TYPE_3__ {size_t size; struct report_track_selection* data; } ;
typedef TYPE_1__ vec_on_track_selection_changed ;
struct report_track_selection {int * selected_id; int * unselected_id; } ;


 int assert (int) ;

__attribute__((used)) static bool
vec_on_track_selection_has_event(vec_on_track_selection_changed *vec,
                                 size_t from_idx, vlc_es_id_t *unselected_id,
                                 vlc_es_id_t *selected_id)
{
    assert(vec->size >= from_idx);
    bool has_unselected_id = 0, has_selected_id = 0;
    for (size_t i = from_idx; i < vec->size; ++i)
    {
        struct report_track_selection report = vec->data[i];
        if (unselected_id && report.unselected_id == unselected_id)
        {
            assert(!has_unselected_id);
            has_unselected_id = 1;
        }
        if (selected_id && report.selected_id == selected_id)
        {
            assert(!has_selected_id);
            has_selected_id = 1;
        }
    }
    if (unselected_id && selected_id)
        return has_unselected_id && has_selected_id;
    else if (unselected_id)
    {
        assert(!has_selected_id);
        return has_unselected_id;
    }
    else
    {
        assert(selected_id);
        assert(!has_unselected_id);
        return has_selected_id;
    }
}
