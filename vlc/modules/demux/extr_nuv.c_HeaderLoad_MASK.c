#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {scalar_t__ d_fps; void* i_keyframe_distance; void* i_text_blocks; void* i_audio_blocks; void* i_video_blocks; scalar_t__ d_aspect; void* i_height; void* i_width; int /*<<< orphan*/  version; int /*<<< orphan*/  id; int /*<<< orphan*/  i_mode; void* i_height_desired; void* i_width_desired; } ;
typedef  TYPE_1__ header_t ;
struct TYPE_7__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_2__ demux_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,scalar_t__,scalar_t__,void*,void*,void*,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux, header_t *h )
{
    uint8_t buffer[72];

    if( FUNC4( p_demux->s, buffer, 72 ) != 72 )
        return VLC_EGENERIC;

    /* XXX: they are alignment to take care of (another broken format) */
    FUNC2( h->id,      &buffer[ 0], 12 );
    FUNC2( h->version, &buffer[12], 5 );
    h->i_width = FUNC0( &buffer[20] );
    h->i_height = FUNC0( &buffer[24] );
    h->i_width_desired = FUNC0( &buffer[28] );
    h->i_height_desired = FUNC0( &buffer[32] );
    h->i_mode = buffer[36];
    FUNC1( &h->d_aspect, &buffer[40] );
    FUNC1( &h->d_fps, &buffer[48] );
    h->i_video_blocks = FUNC0( &buffer[56] );
    h->i_audio_blocks = FUNC0( &buffer[60] );
    h->i_text_blocks = FUNC0( &buffer[64] );
    h->i_keyframe_distance = FUNC0( &buffer[68] );
#if 0
    msg_Dbg( p_demux, "nuv: h=%s v=%s %dx%d a=%f fps=%f v=%d a=%d t=%d kfd=%d",
             h->id, h->version, h->i_width, h->i_height, h->d_aspect,
             h->d_fps, h->i_video_blocks, h->i_audio_blocks, h->i_text_blocks,
             h->i_keyframe_distance );
#endif

    return (h->d_fps) ? VLC_SUCCESS : VLC_EGENERIC;
}