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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_7__ {size_t* pi_sample_count; size_t* pi_sample_delta; size_t i_entry_count; } ;
struct TYPE_5__ {TYPE_4__* p_stts; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_stts_t ; 
 int /*<<< orphan*/  MP4_FreeBox_stts ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 size_t i_read ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC6 (size_t,int) ; 

__attribute__((used)) static int FUNC7( stream_t *p_stream, MP4_Box_t *p_box )
{
    uint32_t count;

    FUNC2( MP4_Box_data_stts_t, MP4_FreeBox_stts );

    FUNC1( p_box->data.p_stts );
    FUNC0( count );

    if( FUNC4(8) * count > i_read )
    {
        /*count = i_read / 8;*/
        FUNC3( 0 );
    }

    p_box->data.p_stts->pi_sample_count = FUNC6( count, sizeof(uint32_t) );
    p_box->data.p_stts->pi_sample_delta = FUNC6( count, sizeof(int32_t) );
    p_box->data.p_stts->i_entry_count = count;

    if( p_box->data.p_stts->pi_sample_count == NULL
     || p_box->data.p_stts->pi_sample_delta == NULL )
    {
        FUNC3( 0 );
    }

    for( uint32_t i = 0; i < count; i++ )
    {
        FUNC0( p_box->data.p_stts->pi_sample_count[i] );
        FUNC0( p_box->data.p_stts->pi_sample_delta[i] );
    }

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream, "read box: \"stts\" entry-count %d",
                      p_box->data.p_stts->i_entry_count );

#endif
    FUNC3( 1 );
}