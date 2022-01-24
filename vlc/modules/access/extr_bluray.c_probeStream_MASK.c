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
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  STREAM_CAN_SEEK ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,scalar_t__ const**,int) ; 

__attribute__((used)) static int FUNC2(demux_t *p_demux)
{
    /* input must be seekable */
    bool b_canseek = false;
    FUNC0( p_demux->s, STREAM_CAN_SEEK, &b_canseek );
    if (!b_canseek) {
        return VLC_EGENERIC;
    }

    /* first sector(s) should be filled with zeros */
    size_t i_peek;
    const uint8_t *p_peek;
    i_peek = FUNC1( p_demux->s, &p_peek, 2048 );
    if( i_peek != 2048 ) {
        return VLC_EGENERIC;
    }
    while (i_peek > 0) {
        if (p_peek[ --i_peek ]) {
            return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}