
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int libvlc_media_list_t ;
struct TYPE_4__ {int * p_mlist; int current_playing_item_path; } ;
typedef TYPE_1__ libvlc_media_list_player_t ;
typedef int* libvlc_media_list_path_t ;


 int assert_locked (TYPE_1__*) ;
 int* find_last_item (int *,int*) ;
 int free (int*) ;
 int libvlc_media_list_count (int *) ;
 int * libvlc_media_list_parentlist_at_path (int *,int ) ;
 int* libvlc_media_list_path_copy (int ) ;
 int libvlc_media_list_path_depth (int ) ;
 int* libvlc_media_list_path_with_root_index (int ) ;
 int libvlc_media_list_release (int *) ;

__attribute__((used)) static libvlc_media_list_path_t
get_previous_path(libvlc_media_list_player_t * p_mlp, bool b_loop)
{
    assert_locked(p_mlp);


    libvlc_media_list_path_t ret;
    libvlc_media_list_t * p_parent_of_playing_item;

    if (!p_mlp->current_playing_item_path)
    {
        if (!libvlc_media_list_count(p_mlp->p_mlist))
            return ((void*)0);
        return libvlc_media_list_path_with_root_index(0);
    }


    p_parent_of_playing_item = libvlc_media_list_parentlist_at_path(
                                            p_mlp->p_mlist,
                                            p_mlp->current_playing_item_path);

    int depth = libvlc_media_list_path_depth(p_mlp->current_playing_item_path);
    if (depth < 1 || !p_parent_of_playing_item)
        return ((void*)0);


    ret = libvlc_media_list_path_copy(p_mlp->current_playing_item_path);


    ret[depth - 1]--;
    ret[depth] = -1;


    if(ret[depth - 1] < 0)
    {

        depth--;


        if (depth <= 0)
        {

            if(b_loop)
            {
                int i_count = libvlc_media_list_count(p_parent_of_playing_item);


                ret[0] = i_count - 1;
                ret[1] = -1;


                ret = find_last_item(p_mlp->p_mlist, ret);
            }
            else
            {

                free(ret);
                ret = ((void*)0);
            }
        }
        else
        {





            ret[depth] = -1;
        }
    }
    else
    {
        ret = find_last_item(p_mlp->p_mlist, ret);
    }

    libvlc_media_list_release(p_parent_of_playing_item);
    return ret;
}
