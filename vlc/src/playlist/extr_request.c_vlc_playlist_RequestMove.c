
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
struct size_vector {size_t size; int data; } ;
typedef int ssize_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 struct size_vector VLC_VECTOR_INITIALIZER ;
 int assert (int) ;
 int vlc_playlist_AssertLocked (int *) ;
 size_t vlc_playlist_Count (int *) ;
 int vlc_playlist_FindIndices (int *,int * const*,size_t,int ,struct size_vector*) ;
 int vlc_playlist_MoveBySlices (int *,int ,size_t,size_t) ;
 int vlc_vector_destroy (struct size_vector*) ;
 int vlc_vector_reserve (struct size_vector*,size_t) ;

int
vlc_playlist_RequestMove(vlc_playlist_t *playlist,
                         vlc_playlist_item_t *const items[], size_t count,
                         size_t target, ssize_t index_hint)
{
    vlc_playlist_AssertLocked(playlist);

    struct size_vector vector = VLC_VECTOR_INITIALIZER;
    if (!vlc_vector_reserve(&vector, count))
        return VLC_ENOMEM;

    vlc_playlist_FindIndices(playlist, items, count, index_hint, &vector);

    size_t move_count = vector.size;
    if (move_count)
    {
        size_t size = vlc_playlist_Count(playlist);
        assert(size >= move_count);

        if (target + move_count > size)
            target = size - move_count;


        vlc_playlist_MoveBySlices(playlist, vector.data, vector.size, target);
    }

    vlc_vector_destroy(&vector);
    return VLC_SUCCESS;
}
