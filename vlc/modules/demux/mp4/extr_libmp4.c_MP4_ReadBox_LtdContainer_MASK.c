#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_11__ {scalar_t__ i_version; scalar_t__ i_entry_count; } ;
struct TYPE_9__ {TYPE_6__* p_lcont; } ;
struct TYPE_10__ {int i_size; scalar_t__ i_pos; TYPE_1__ data; int /*<<< orphan*/  i_type; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  MP4_Box_data_lcont_t ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int i_read ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC8( stream_t *p_stream, MP4_Box_t *p_box )
{
    FUNC3( MP4_Box_data_lcont_t, 16, NULL );
    if( i_read < 8 )
        FUNC4( 0 );

    FUNC2( p_box->data.p_lcont );
    if( p_box->data.p_lcont->i_version != 0 )
        FUNC4( 0 );
    FUNC1( p_box->data.p_lcont->i_entry_count );

    uint32_t i_entry = 0;
    i_read = p_box->i_size - 16;
    while (i_read > 8 && i_entry < p_box->data.p_lcont->i_entry_count )
    {
        MP4_Box_t *p_childbox = FUNC5( p_stream, p_box );
        if( !p_childbox )
            break;
        FUNC0( p_box, p_childbox );
        i_entry++;

        if( i_read < p_childbox->i_size )
            FUNC4( 0 );

        i_read -= p_childbox->i_size;
    }

    if (i_entry != p_box->data.p_lcont->i_entry_count)
        p_box->data.p_lcont->i_entry_count = i_entry;

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream, "read box: \"%4.4s\" entry-count %d", (char *)&p_box->i_type,
                        p_box->data.p_lcont->i_entry_count );

#endif

    if ( FUNC6( p_stream, p_box->i_pos + p_box->i_size ) )
        FUNC4( 0 );

    FUNC4( 1 );
}