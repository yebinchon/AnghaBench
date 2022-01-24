#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ size; } ;
struct vlc_player_input {int /*<<< orphan*/  thread; TYPE_1__ spu_track_vector; TYPE_1__ audio_track_vector; TYPE_1__ video_track_vector; TYPE_1__ program_vector; int /*<<< orphan*/ * teletext_menu; int /*<<< orphan*/ * titles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_player_input*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(struct vlc_player_input *input)
{
    FUNC0(input->titles == NULL);
    FUNC0(input->program_vector.size == 0);
    FUNC0(input->video_track_vector.size == 0);
    FUNC0(input->audio_track_vector.size == 0);
    FUNC0(input->spu_track_vector.size == 0);
    FUNC0(input->teletext_menu == NULL);

    FUNC3(&input->program_vector);
    FUNC3(&input->video_track_vector);
    FUNC3(&input->audio_track_vector);
    FUNC3(&input->spu_track_vector);

    FUNC2(input->thread);
    FUNC1(input);
}