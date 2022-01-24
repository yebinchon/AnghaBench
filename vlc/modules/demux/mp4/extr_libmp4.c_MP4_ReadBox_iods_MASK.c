#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_7__ {int i_object_descriptor; char i_OD_profile_level; char i_scene_profile_level; char i_audio_profile_level; char i_visual_profile_level; char i_graphics_profile_level; } ;
struct TYPE_5__ {TYPE_4__* p_iods; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_iods_t ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,char,char,char,char,char) ; 

__attribute__((used)) static int FUNC7( stream_t *p_stream, MP4_Box_t *p_box )
{
    char i_unused;
    FUNC5(i_unused);

    FUNC3( MP4_Box_data_iods_t, NULL );
    FUNC2( p_box->data.p_iods );

    FUNC0( i_unused ); /* tag */
    FUNC0( i_unused ); /* length */

    FUNC1( p_box->data.p_iods->i_object_descriptor ); /* 10bits, 6 other bits
                                                              are used for other flags */
    FUNC0( p_box->data.p_iods->i_OD_profile_level );
    FUNC0( p_box->data.p_iods->i_scene_profile_level );
    FUNC0( p_box->data.p_iods->i_audio_profile_level );
    FUNC0( p_box->data.p_iods->i_visual_profile_level );
    FUNC0( p_box->data.p_iods->i_graphics_profile_level );

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream,
             "read box: \"iods\" objectDescriptorId: %i, OD: %i, scene: %i, audio: %i, "
             "visual: %i, graphics: %i",
             p_box->data.p_iods->i_object_descriptor >> 6,
             p_box->data.p_iods->i_OD_profile_level,
             p_box->data.p_iods->i_scene_profile_level,
             p_box->data.p_iods->i_audio_profile_level,
             p_box->data.p_iods->i_visual_profile_level,
             p_box->data.p_iods->i_graphics_profile_level );
#endif

    FUNC4( 1 );
}