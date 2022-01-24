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
struct TYPE_7__ {size_t* i_sample_number; size_t i_entry_count; } ;
struct TYPE_5__ {TYPE_4__* p_stss; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_stss_t ; 
 int /*<<< orphan*/  MP4_FreeBox_stss ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 size_t i_read ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 size_t* FUNC7 (size_t,int) ; 

__attribute__((used)) static int FUNC8( stream_t *p_stream, MP4_Box_t *p_box )
{
    uint32_t count;

    FUNC2( MP4_Box_data_stss_t, MP4_FreeBox_stss );

    FUNC1( p_box->data.p_stss );
    FUNC0( count );

    if( FUNC4(4) * count > i_read )
        FUNC3( 0 );

    p_box->data.p_stss->i_sample_number = FUNC7( count, sizeof(uint32_t) );
    if( FUNC6( p_box->data.p_stss->i_sample_number == NULL ) )
        FUNC3( 0 );
    p_box->data.p_stss->i_entry_count = count;

    for( uint32_t i = 0; i < count; i++ )
    {
        FUNC0( p_box->data.p_stss->i_sample_number[i] );
        /* XXX in libmp4 sample begin at 0 */
        p_box->data.p_stss->i_sample_number[i]--;
    }

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream, "read box: \"stss\" entry-count %d",
                      p_box->data.p_stss->i_entry_count );

#endif
    FUNC3( 1 );
}