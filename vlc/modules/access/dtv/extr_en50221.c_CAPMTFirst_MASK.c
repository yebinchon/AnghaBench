#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_program_number; } ;
typedef  TYPE_1__ en50221_capmt_info_t ;
struct TYPE_9__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ cam_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOT_CA_PMT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int,TYPE_1__ const*,int,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4( cam_t * p_cam, int i_session_id,
                        const en50221_capmt_info_t *p_info )
{
    uint8_t *p_capmt;
    size_t i_capmt_size;

    FUNC3( p_cam->obj, "adding first CAPMT for SID %d on session %d",
             p_info->i_program_number, i_session_id );

    p_capmt = FUNC1( p_cam, i_session_id, p_info,
                          0x3 /* only */, 0x1 /* ok_descrambling */,
                          &i_capmt_size );
    if( p_capmt != NULL )
    {
        FUNC0( p_cam, i_session_id, AOT_CA_PMT, p_capmt, i_capmt_size );
        FUNC2( p_capmt );
    }
}