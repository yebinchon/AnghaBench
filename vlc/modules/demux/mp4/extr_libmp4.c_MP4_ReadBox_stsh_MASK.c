#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_9__ {size_t* i_shadowed_sample_number; size_t* i_sync_sample_number; size_t i_entry_count; } ;
struct TYPE_7__ {TYPE_5__* p_stsh; TYPE_1__* p_stss; } ;
struct TYPE_8__ {TYPE_2__ data; } ;
struct TYPE_6__ {size_t i_entry_count; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_stsh_t ; 
 int /*<<< orphan*/  MP4_FreeBox_stsh ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 size_t i_read ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC6 (size_t,int) ; 

__attribute__((used)) static int FUNC7( stream_t *p_stream, MP4_Box_t *p_box )
{
    uint32_t count;

    FUNC2( MP4_Box_data_stsh_t, MP4_FreeBox_stsh );

    FUNC1( p_box->data.p_stsh );
    FUNC0( count );

    if( FUNC4(8) * count > i_read )
        FUNC3( 0 );

    p_box->data.p_stsh->i_shadowed_sample_number = FUNC6( count,
                                                            sizeof(uint32_t) );
    p_box->data.p_stsh->i_sync_sample_number = FUNC6( count,
                                                          sizeof(uint32_t) );
    if( p_box->data.p_stsh->i_shadowed_sample_number == NULL
     || p_box->data.p_stsh->i_sync_sample_number == NULL )
        FUNC3( 0 );
    p_box->data.p_stsh->i_entry_count = count;

    for( uint32_t i = 0; i < p_box->data.p_stss->i_entry_count; i++ )
    {
        FUNC0( p_box->data.p_stsh->i_shadowed_sample_number[i] );
        FUNC0( p_box->data.p_stsh->i_sync_sample_number[i] );
    }

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream, "read box: \"stsh\" entry-count %d",
                      p_box->data.p_stsh->i_entry_count );
#endif
    FUNC3( 1 );
}