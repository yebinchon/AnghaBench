#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_6__ {TYPE_1__* p_track_reference; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {unsigned int i_entry_count; int /*<<< orphan*/ * i_track_ID; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_trak_reference_t ; 
 int /*<<< orphan*/  MP4_FreeBox_TrackReference ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int i_read ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int,int) ; 

__attribute__((used)) static int FUNC5( stream_t *p_stream, MP4_Box_t *p_box )
{
    uint32_t count;

    FUNC1( MP4_Box_data_trak_reference_t, MP4_FreeBox_TrackReference );

    p_box->data.p_track_reference->i_track_ID = NULL;
    count = i_read / sizeof(uint32_t);
    p_box->data.p_track_reference->i_entry_count = count;
    p_box->data.p_track_reference->i_track_ID = FUNC4( count,
                                                        sizeof(uint32_t) );
    if( p_box->data.p_track_reference->i_track_ID == NULL )
        FUNC2( 0 );

    for( unsigned i = 0; i < count; i++ )
    {
        FUNC0( p_box->data.p_track_reference->i_track_ID[i] );
    }
#ifdef MP4_VERBOSE
        msg_Dbg( p_stream, "read box: \"chap\" %d references",
                 p_box->data.p_track_reference->i_entry_count );
#endif

    FUNC2( 1 );
}