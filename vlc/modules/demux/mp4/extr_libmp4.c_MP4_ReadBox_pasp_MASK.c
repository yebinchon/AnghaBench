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
struct TYPE_5__ {TYPE_2__* p_pasp; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_vertical_spacing; int /*<<< orphan*/  i_horizontal_spacing; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_pasp_t ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4( stream_t *p_stream, MP4_Box_t *p_box )
{
    FUNC1( MP4_Box_data_pasp_t, NULL );

    FUNC0( p_box->data.p_pasp->i_horizontal_spacing );
    FUNC0( p_box->data.p_pasp->i_vertical_spacing );

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream,
             "read box: \"paps\" %dx%d",
             p_box->data.p_pasp->i_horizontal_spacing,
             p_box->data.p_pasp->i_vertical_spacing);
#endif

    FUNC2( 1 );
}