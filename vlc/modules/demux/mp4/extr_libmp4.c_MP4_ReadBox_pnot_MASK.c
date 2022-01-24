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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_6__ {TYPE_1__* p_pnot; } ;
struct TYPE_7__ {int i_size; TYPE_2__ data; } ;
struct TYPE_5__ {scalar_t__ i_index; int /*<<< orphan*/  i_type; int /*<<< orphan*/  i_date; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_pnot_t ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5( stream_t *p_stream, MP4_Box_t *p_box )
{
    if ( p_box->i_size != 20 )
        return 0;
    FUNC3( MP4_Box_data_pnot_t, NULL );
    FUNC1( p_box->data.p_pnot->i_date );
    uint16_t i_version;
    FUNC0( i_version );
    if ( i_version != 0 )
        FUNC4( 0 );
    FUNC2( p_box->data.p_pnot->i_type );
    FUNC0( p_box->data.p_pnot->i_index );
    FUNC4( 1 );
}