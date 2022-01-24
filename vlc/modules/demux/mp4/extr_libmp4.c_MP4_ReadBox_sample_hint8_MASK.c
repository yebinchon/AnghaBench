#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_7__ {TYPE_1__* p_sample_hint; } ;
struct TYPE_8__ {scalar_t__ i_size; scalar_t__ i_pos; TYPE_2__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/ * p_data; int /*<<< orphan*/  i_data_reference_index; int /*<<< orphan*/ * i_reserved1; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_sample_hint_t ; 
 int /*<<< orphan*/  MP4_FreeBox_sample_hint ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 

__attribute__((used)) static int FUNC8( stream_t *p_stream, MP4_Box_t *p_box )
{
    FUNC3( MP4_Box_data_sample_hint_t, 24, MP4_FreeBox_sample_hint );

    for( unsigned i = 0; i < 6 ; i++ )
    {
        FUNC0( p_box->data.p_sample_hint->i_reserved1[i] );
    }

    FUNC1( p_box->data.p_sample_hint->i_data_reference_index );

    if( !(p_box->data.p_sample_hint->p_data = FUNC7(8)) )
        FUNC4( 0 );

    FUNC2( *(p_box->data.p_sample_hint->p_data) );

    FUNC5(p_stream, p_box, NULL);

    if ( FUNC6( p_stream, p_box->i_pos + p_box->i_size ) )
        FUNC4( 0 );

    FUNC4( 1 );
}