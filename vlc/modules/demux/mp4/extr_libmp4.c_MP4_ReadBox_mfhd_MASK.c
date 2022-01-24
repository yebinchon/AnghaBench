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
struct TYPE_6__ {TYPE_1__* p_mfhd; int /*<<< orphan*/  p_mvhd; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_sequence_number; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_mfhd_t ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(  stream_t *p_stream, MP4_Box_t *p_box )
{
    FUNC2( MP4_Box_data_mfhd_t, NULL );

    FUNC1( p_box->data.p_mvhd );

    FUNC0( p_box->data.p_mfhd->i_sequence_number );

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream, "read box: \"mfhd\" sequence number %d",
                  p_box->data.p_mfhd->i_sequence_number );
#endif
    FUNC3( 1 );
}