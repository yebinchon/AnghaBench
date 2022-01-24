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
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 char* FUNC2 (char const*,size_t) ; 
 size_t FUNC3 (char const*,size_t) ; 
 int /*<<< orphan*/  vlc_meta_ArtworkURL ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC6( const uint8_t *p_buf, size_t i_buf,
                                    vlc_meta_t *p_meta, bool *pb_updated )
{
    if( i_buf > 13 && p_meta )
    {
        const char *psz = (const char *)&p_buf[1];
        size_t i_len = i_buf - 1;
        size_t i_desclen = FUNC3(psz, i_len);
        if( i_desclen < i_len - 1 && i_desclen > 11 &&
            !FUNC1( "artworkURL_", psz, 11 ) )
        {
            const char *psz_old = FUNC4( p_meta, vlc_meta_ArtworkURL );
            if( !psz_old || FUNC1( psz_old, &psz[i_desclen], i_len - i_desclen ) )
            {
                char *p_alloc = FUNC2(&psz[i_desclen + 1], i_len - i_desclen - 1);
                FUNC5( p_meta, vlc_meta_ArtworkURL, p_alloc );
                FUNC0( p_alloc );
                *pb_updated = true;
            }
        }
        return true;
    }
    return false;
}