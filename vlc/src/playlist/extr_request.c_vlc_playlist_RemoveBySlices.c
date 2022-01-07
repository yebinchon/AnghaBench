
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;


 int assert (int) ;
 int vlc_playlist_Remove (int *,size_t,size_t) ;

__attribute__((used)) static void
vlc_playlist_RemoveBySlices(vlc_playlist_t *playlist, size_t sorted_indices[],
                            size_t count)
{
    assert(count > 0);
    size_t last_index = sorted_indices[count - 1];
    size_t slice_size = 1;

    for (size_t i = count - 1; i != 0; --i)
    {
        size_t index = sorted_indices[i - 1];
        if (index == last_index - 1)
            slice_size++;
        else
        {

            vlc_playlist_Remove(playlist, last_index, slice_size);
            slice_size = 1;
        }
        last_index = index;
    }

    vlc_playlist_Remove(playlist, last_index, slice_size);
}
