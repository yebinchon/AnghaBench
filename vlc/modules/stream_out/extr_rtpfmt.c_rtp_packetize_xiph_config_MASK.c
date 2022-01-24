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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  char uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  sout_stream_id_sys_t ;
struct TYPE_5__ {char* p_buffer; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int XIPH_IDENT ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC11 (char*,char) ; 
 char* FUNC12 (char const*,char*) ; 
 int FUNC13 (char**,char*) ; 

int FUNC14( sout_stream_id_sys_t *id, const char *fmtp,
                               vlc_tick_t i_pts )
{
    if (fmtp == NULL)
        return VLC_EGENERIC;

    /* extract base64 configuration from fmtp */
    char *start = FUNC12(fmtp, "configuration=");
    FUNC3(start != NULL);
    start += sizeof("configuration=") - 1;
    char *end = FUNC11(start, ';');
    FUNC3(end != NULL);
    size_t len = end - start;

    char *b64 = FUNC6(len + 1);
    if(!b64)
        return VLC_EGENERIC;

    FUNC7(b64, start, len);
    b64[len] = '\0';

    int     i_max   = FUNC8 (id) - 6; /* payload max in one packet */

    uint8_t *p_orig, *p_data;
    int i_data;

    i_data = FUNC13(&p_orig, b64);
    FUNC5(b64);
    if (i_data <= 9)
    {
        FUNC5(p_orig);
        return VLC_EGENERIC;
    }
    p_data = p_orig + 9;
    i_data -= 9;

    int i_count = ( i_data + i_max - 1 ) / i_max;

    for( int i = 0; i < i_count; i++ )
    {
        int           i_payload = FUNC2( i_max, i_data );
        block_t *out = FUNC4( 18 + i_payload );

        unsigned fragtype, numpkts;
        if (i_count == 1)
        {
            fragtype = 0;
            numpkts = 1;
        }
        else
        {
            numpkts = 0;
            if (i == 0)
                fragtype = 1;
            else if (i == i_count - 1)
                fragtype = 3;
            else
                fragtype = 2;
        }
        /* Ident:24, Fragment type:2, Vorbis/Theora Data Type:2, # of pkts:4 */
        uint32_t header = ((XIPH_IDENT & 0xffffff) << 8) |
                          (fragtype << 6) | (1 << 4) | numpkts;

        /* rtp common header */
        FUNC9( id, out, 0, i_pts );

        FUNC0( out->p_buffer + 12, header);
        FUNC1( out->p_buffer + 16, i_payload);
        FUNC7( &out->p_buffer[18], p_data, i_payload );

        out->i_dts    = i_pts;

        FUNC10( id, out );

        p_data += i_payload;
        i_data -= i_payload;
    }

    FUNC5(p_orig);

    return VLC_SUCCESS;
}