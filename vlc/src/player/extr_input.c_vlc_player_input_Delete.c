
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct vlc_player_input {int thread; TYPE_1__ spu_track_vector; TYPE_1__ audio_track_vector; TYPE_1__ video_track_vector; TYPE_1__ program_vector; int * teletext_menu; int * titles; } ;


 int assert (int) ;
 int free (struct vlc_player_input*) ;
 int input_Close (int ) ;
 int vlc_vector_destroy (TYPE_1__*) ;

void
vlc_player_input_Delete(struct vlc_player_input *input)
{
    assert(input->titles == ((void*)0));
    assert(input->program_vector.size == 0);
    assert(input->video_track_vector.size == 0);
    assert(input->audio_track_vector.size == 0);
    assert(input->spu_track_vector.size == 0);
    assert(input->teletext_menu == ((void*)0));

    vlc_vector_destroy(&input->program_vector);
    vlc_vector_destroy(&input->video_track_vector);
    vlc_vector_destroy(&input->audio_track_vector);
    vlc_vector_destroy(&input->spu_track_vector);

    input_Close(input->thread);
    free(input);
}
