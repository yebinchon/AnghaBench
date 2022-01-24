#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_5__ {int* pb_active_slot; int /*<<< orphan*/  i_timeout; int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ cam_t ;

/* Variables and functions */
 int MAX_TC_RETRIES ; 
 scalar_t__ FUNC0 (TYPE_1__*,int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_CREATE_TC ; 
 scalar_t__ T_CTC_REPLY ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4( cam_t * p_cam, int i_slot )
{
    if ( FUNC1( p_cam, i_slot, T_CREATE_TC, NULL, 0 ) != VLC_SUCCESS )
    {
        FUNC3( p_cam->obj, "en50221_Init: couldn't send TPDU on slot %d",
                 i_slot );
        return VLC_EGENERIC;
    }

    /* This is out of the spec */
    for ( int i = 0; i < MAX_TC_RETRIES; i++ )
    {
        uint8_t i_tag;
        if ( FUNC0( p_cam, i_slot, &i_tag, NULL, NULL ) == VLC_SUCCESS
              && i_tag == T_CTC_REPLY )
        {
            p_cam->pb_active_slot[i_slot] = true;
            break;
        }

        if ( FUNC1( p_cam, i_slot, T_CREATE_TC, NULL, 0 )
                != VLC_SUCCESS )
        {
            FUNC3( p_cam->obj,
                     "en50221_Init: couldn't send TPDU on slot %d",
                     i_slot );
            continue;
        }
    }

    if ( p_cam->pb_active_slot[i_slot] )
    {
        p_cam->i_timeout = FUNC2(100);
        return VLC_SUCCESS;
    }

    return VLC_EGENERIC;
}