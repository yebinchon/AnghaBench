#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  obj; TYPE_1__* p_sessions; } ;
typedef  TYPE_2__ cam_t ;
struct TYPE_6__ {scalar_t__ i_slot; } ;

/* Variables and functions */
 int MAX_TPDU_DATA ; 
 int /*<<< orphan*/  ST_SESSION_NUMBER ; 
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  T_DATA_LAST ; 
 int /*<<< orphan*/  T_DATA_MORE ; 
 scalar_t__ T_SB ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6( cam_t * p_cam, int i_session_id,
                     uint8_t *p_data, int i_size )
{
    uint8_t *p_spdu = FUNC5( i_size + 4 );
    uint8_t *p = p_spdu;
    uint8_t i_tag;
    uint8_t i_slot = p_cam->p_sessions[i_session_id - 1].i_slot;

    *p++ = ST_SESSION_NUMBER;
    *p++ = 0x02;
    *p++ = (i_session_id >> 8);
    *p++ = i_session_id & 0xff;

    FUNC3( p, p_data, i_size );

    i_size += 4;
    p = p_spdu;

    while ( i_size > 0 )
    {
        if ( i_size > MAX_TPDU_DATA )
        {
            if ( FUNC1( p_cam, i_slot, T_DATA_MORE, p,
                           MAX_TPDU_DATA ) != VLC_SUCCESS )
            {
                FUNC4( p_cam->obj, "couldn't send TPDU on session %d",
                         i_session_id );
                FUNC2( p_spdu );
                return VLC_EGENERIC;
            }
            p += MAX_TPDU_DATA;
            i_size -= MAX_TPDU_DATA;
        }
        else
        {
            if ( FUNC1( p_cam, i_slot, T_DATA_LAST, p, i_size )
                    != VLC_SUCCESS )
            {
                FUNC4( p_cam->obj, "couldn't send TPDU on session %d",
                         i_session_id );
                FUNC2( p_spdu );
                return VLC_EGENERIC;
            }
            i_size = 0;
        }

        if ( FUNC0( p_cam, i_slot, &i_tag, NULL, NULL ) != VLC_SUCCESS
               || i_tag != T_SB )
        {
            FUNC4( p_cam->obj, "couldn't recv TPDU on session %d",
                     i_session_id );
            FUNC2( p_spdu );
            return VLC_EGENERIC;
        }
    }

    FUNC2( p_spdu );
    return VLC_SUCCESS;
}