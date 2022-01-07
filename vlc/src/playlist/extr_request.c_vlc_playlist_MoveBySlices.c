
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;


 int assert (int) ;
 int vlc_playlist_Move (int *,size_t,size_t,size_t) ;
 size_t vlc_playlist_Regroup (int *,size_t*,size_t) ;

__attribute__((used)) static void
vlc_playlist_MoveBySlices(vlc_playlist_t *playlist, size_t indices[],
                          size_t count, size_t target)
{
    assert(count > 0);


    size_t i;
    for (i = count - 1; i != 0; --i)
        if (indices[i - 1] != indices[i] - 1)
            break;


    size_t head = vlc_playlist_Regroup(playlist, indices, i);


    if (head != target)
        vlc_playlist_Move(playlist, head, count, target);
}
