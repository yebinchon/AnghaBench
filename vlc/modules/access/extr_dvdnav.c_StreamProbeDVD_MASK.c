#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  char uint16_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  iso_dsc ;

/* Variables and functions */
 int DVD_VIDEO_LB_LEN ; 
 int FUNC0 (char*) ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__ const**,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5( stream_t *s )
{
    /* first sector should be filled with zeros */
    ssize_t i_peek;
    const uint8_t *p_peek;
    i_peek = FUNC2( s, &p_peek, 2048 );
    if( i_peek < 512 ) {
        return VLC_EGENERIC;
    }
    while (i_peek > 0) {
        if (p_peek[ --i_peek ]) {
            return VLC_EGENERIC;
        }
    }

    /* ISO 9660 volume descriptor */
    char iso_dsc[6];
    if( FUNC4( s, 0x8000 + 1 ) != VLC_SUCCESS
     || FUNC3( s, iso_dsc, sizeof (iso_dsc) ) < (int)sizeof (iso_dsc)
     || FUNC1( iso_dsc, "CD001\x01", 6 ) )
        return VLC_EGENERIC;

    /* Try to find the anchor (2 bytes at LBA 256) */
    uint16_t anchor;

    if( FUNC4( s, 256 * DVD_VIDEO_LB_LEN ) == VLC_SUCCESS
     && FUNC3( s, &anchor, 2 ) == 2
     && FUNC0( &anchor ) == 2 )
        return VLC_SUCCESS;
    else
        return VLC_EGENERIC;
}