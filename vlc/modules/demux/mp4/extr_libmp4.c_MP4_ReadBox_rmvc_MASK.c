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
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_7__ {int /*<<< orphan*/  i_checkType; int /*<<< orphan*/  i_val2; int /*<<< orphan*/  i_val1; int /*<<< orphan*/  i_gestaltType; } ;
struct TYPE_5__ {TYPE_4__* p_rmvc; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_rmvc_t ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7( stream_t *p_stream, MP4_Box_t *p_box )
{
    FUNC4( MP4_Box_data_rmvc_t, NULL );
    FUNC3( p_box->data.p_rmvc );

    FUNC2( p_box->data.p_rmvc->i_gestaltType );
    FUNC1( p_box->data.p_rmvc->i_val1 );
    FUNC1( p_box->data.p_rmvc->i_val2 );
    FUNC0( p_box->data.p_rmvc->i_checkType );

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream,
             "read box: \"rmvc\" gestaltType:%4.4s val1:0x%x val2:0x%x checkType:0x%x",
             (char*)&p_box->data.p_rmvc->i_gestaltType,
             p_box->data.p_rmvc->i_val1,p_box->data.p_rmvc->i_val2,
             p_box->data.p_rmvc->i_checkType );
#endif

    FUNC5( 1 );
}