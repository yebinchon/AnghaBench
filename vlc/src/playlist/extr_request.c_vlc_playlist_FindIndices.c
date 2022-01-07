
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
struct size_vector {int dummy; } ;
typedef int ssize_t ;


 int VLC_UNUSED (int) ;
 int assert (int) ;
 int vlc_playlist_FindRealIndex (int *,int * const,int) ;
 int vlc_vector_push (struct size_vector*,int) ;

__attribute__((used)) static void
vlc_playlist_FindIndices(vlc_playlist_t *playlist,
                         vlc_playlist_item_t *const items[], size_t count,
                         ssize_t index_hint, struct size_vector *out)
{
    for (size_t i = 0; i < count; ++i)
    {
        ssize_t real_index = vlc_playlist_FindRealIndex(playlist, items[i],
                                                        index_hint);
        if (real_index != -1)
        {
            int ok = vlc_vector_push(out, real_index);
            assert(ok);
            VLC_UNUSED(ok);

            index_hint = real_index + 1;
        }
    }
}
