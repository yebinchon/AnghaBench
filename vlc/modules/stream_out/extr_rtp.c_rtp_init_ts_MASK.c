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
typedef  int /*<<< orphan*/  vod_media_t ;
typedef  uintptr_t vlc_tick_t ;
typedef  uintptr_t uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*,char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char const*) ; 
 uintptr_t FUNC3 () ; 

__attribute__((used)) static vlc_tick_t FUNC4( const vod_media_t *p_media,
                            const char *psz_vod_session )
{
    if (p_media == NULL || psz_vod_session == NULL)
        return FUNC3();

    uint64_t i_ts_init = 0;
    /* As per RFC 2326, session identifiers are at least 8 bytes long */
    size_t session_length = FUNC2(psz_vod_session);
    FUNC1(&i_ts_init, psz_vod_session, FUNC0(session_length,
                                              sizeof(uint64_t)));
    i_ts_init ^= (uintptr_t)p_media;
    /* Limit the timestamp to 48 bits, this is enough and allows us
     * to stay away from overflows */
    i_ts_init &= 0xFFFFFFFFFFFF;
    return i_ts_init;
}