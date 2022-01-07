
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;


 int assert (int) ;
 int vlc_playlist_Move (int *,size_t,size_t,size_t) ;

__attribute__((used)) static size_t
vlc_playlist_Regroup(vlc_playlist_t *playlist, size_t indices[],
                     size_t head_index)
{
    size_t head = indices[head_index];
    if (head_index == 0)

        return head;

    size_t slice_size = 1;
    size_t last_index = indices[head_index - 1];


    for (size_t i = head_index - 1; i != 0; --i)
    {
        size_t index = indices[i - 1];
        if (index == last_index - 1)
            slice_size++;
        else
        {
            assert(last_index != head);
            if (last_index < head)
            {
                assert(head >= slice_size);
                head -= slice_size;


                for (size_t j = 0; j <= i; ++j)
                    if (indices[j] >= last_index + slice_size && indices[j] < head)
                        indices[j] -= slice_size;
            }
            else
            {

                for (size_t j = 0; j <= i; ++j)
                    if (indices[j] >= head && indices[j] < last_index)
                        indices[j] += slice_size;
            }
            index = indices[i - 1];


            vlc_playlist_Move(playlist, last_index, slice_size, head);
            slice_size = 1;
        }

        last_index = index;
    }


    if (last_index < head)
    {
        assert(head >= slice_size);
        head -= slice_size;
    }
    vlc_playlist_Move(playlist, last_index, slice_size, head);
    return head;
}
