#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_9__ {int i_size; int i_pos; } ;
typedef  TYPE_1__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP4_ReadBox_TrackReference ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC6( stream_t *p_stream, MP4_Box_t *p_box )
{
    /* skip header */
    ssize_t i_header = FUNC4( p_box );
    if( FUNC5( p_stream, NULL, i_header ) != i_header )
        return 0;
    /* read each reference atom with forced handler */
    uint64_t i_remain = p_box->i_size - 8;
    while ( i_remain > 8 )
    {
        MP4_Box_t *p_childbox = FUNC2( p_stream, p_box,
                                                  MP4_ReadBox_TrackReference );
        if( !p_childbox || i_remain < p_childbox->i_size )
        {
            FUNC1( p_childbox );
            break;
        }

        FUNC0( p_box, p_childbox );
        i_remain -= p_childbox->i_size;
    }

    return FUNC3( p_stream, p_box->i_pos + p_box->i_size ) ? 0 : 1;
}