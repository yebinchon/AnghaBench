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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {scalar_t__ i_ca_type; int /*<<< orphan*/  obj; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ cam_t ;
struct TYPE_7__ {int length; int /*<<< orphan*/ * msg; } ;
typedef  TYPE_2__ ca_msg_t ;

/* Variables and functions */
 scalar_t__ CA_CI_LINK ; 
 int /*<<< orphan*/  CA_SEND_MSG ; 
 int FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (size_t) ; 

__attribute__((used)) static int FUNC8( cam_t * p_cam, int i_session_id, int i_tag,
                     uint8_t *p_data, size_t i_size )
{
    uint8_t *p_apdu = FUNC7( i_size + 12 );
    uint8_t *p = p_apdu;
    ca_msg_t ca_msg;
    int i_ret;

    *p++ = (i_tag >> 16);
    *p++ = (i_tag >> 8) & 0xff;
    *p++ = i_tag & 0xff;
    p = FUNC1( p, i_size );
    if ( i_size )
        FUNC4( p, p_data, i_size );
    if ( p_cam->i_ca_type == CA_CI_LINK )
    {
        i_ret = FUNC0( p_cam, i_session_id, p_apdu, i_size + p - p_apdu );
    }
    else
    {
        if ( i_size + p - p_apdu > 256 )
        {
            FUNC5( p_cam->obj, "CAM: apdu overflow" );
            i_ret = VLC_EGENERIC;
        }
        else
        {
            ca_msg.length = i_size + p - p_apdu;
            if ( i_size == 0 ) ca_msg.length=3;
            FUNC4( ca_msg.msg, p_apdu, i_size + p - p_apdu );
            i_ret = FUNC3( p_cam->fd, CA_SEND_MSG, &ca_msg );
            if ( i_ret < 0 )
            {
                FUNC5( p_cam->obj, "Error sending to CAM: %s",
                         FUNC6(errno) );
                i_ret = VLC_EGENERIC;
            }
        }
    }
    FUNC2( p_apdu );
    return i_ret;
}