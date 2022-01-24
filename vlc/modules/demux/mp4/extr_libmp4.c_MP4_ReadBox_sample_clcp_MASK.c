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
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_5__ {TYPE_2__* p_sample_clcp; } ;
struct TYPE_7__ {TYPE_1__ data; int /*<<< orphan*/  i_handler; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_data_reference_index; int /*<<< orphan*/ * i_reserved1; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_clcp ; 
 int /*<<< orphan*/  MP4_Box_data_sample_clcp_t ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int i_read ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5( stream_t *p_stream, MP4_Box_t *p_box )
{
    p_box->i_handler = ATOM_clcp;
    FUNC2( MP4_Box_data_sample_clcp_t, NULL );

    if( i_read < 8 )
        FUNC3( 0 );

    for( int i=0; i<6; i++ )
        FUNC0( p_box->data.p_sample_clcp->i_reserved1[i] );
    FUNC1( p_box->data.p_sample_clcp->i_data_reference_index );

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream, "read box: \"clcp\" in stsd" );
#endif
    FUNC3( 1 );
}