#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct iovec {void** iov_base; int iov_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ cam_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,void**,int) ; 
 void** FUNC1 (void**,size_t) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct iovec const*,int) ; 

__attribute__((used)) static int FUNC5( cam_t * p_cam, uint8_t i_slot, uint8_t i_tag,
                     const uint8_t *p_content, size_t i_length )
{
    uint8_t p_data[9], *p = p_data;

    *(p++) = i_slot;
    *(p++) = i_slot + 1; /* TCID */
    *(p++) = i_tag;
    p = FUNC1( p, i_length + 1 );

    *(p++) = i_slot + 1;
    FUNC0( true, p_data, p - p_data );

    const struct iovec iov[2] = {
        { .iov_base = p_data, .iov_len = p - p_data },
        { .iov_base = (void *)p_content, .iov_len = i_length },
    };

    if ( FUNC4( p_cam->fd, iov, 2 ) <= 0 )
    {
        FUNC2( p_cam->obj, "cannot write to CAM device: %s",
                 FUNC3(errno) );
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}