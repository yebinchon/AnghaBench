
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_playlist_sort_criterion {scalar_t__ order; int key; } ;
struct vlc_playlist_item_meta {int dummy; } ;
struct sort_request {size_t count; struct vlc_playlist_sort_criterion* criteria; } ;


 int CompareMetaByKey (struct vlc_playlist_item_meta const*,struct vlc_playlist_item_meta const*,int ) ;
 scalar_t__ VLC_PLAYLIST_SORT_ORDER_DESCENDING ;

__attribute__((used)) static int
compare_meta(const void *lhs, const void *rhs, void *userdata)
{
    struct sort_request *req = userdata;
    const struct vlc_playlist_item_meta *a =
            *(const struct vlc_playlist_item_meta **) lhs;
    const struct vlc_playlist_item_meta *b =
            *(const struct vlc_playlist_item_meta **) rhs;

    for (size_t i = 0; i < req->count; ++i)
    {
        const struct vlc_playlist_sort_criterion *criterion = &req->criteria[i];
        int ret = CompareMetaByKey(a, b, criterion->key);
        if (ret)
        {
            if (criterion->order == VLC_PLAYLIST_SORT_ORDER_DESCENDING)

                return ret > 0 ? -1 : 1;
            return ret;
        }
    }
    return 0;
}
