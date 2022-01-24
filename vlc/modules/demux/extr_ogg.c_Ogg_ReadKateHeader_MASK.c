#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_11__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packet; } ;
typedef  TYPE_4__ ogg_packet ;
struct TYPE_10__ {char* psz_description; void** psz_language; } ;
struct TYPE_8__ {void* i_num_headers; } ;
struct TYPE_9__ {TYPE_1__ kate; } ;
struct TYPE_12__ {int b_force_backup; TYPE_3__ fmt; int /*<<< orphan*/  dts; void* i_granule_shift; TYPE_2__ special; } ;
typedef  TYPE_5__ logical_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9( logical_stream_t *p_stream,
                                ogg_packet *p_oggpacket )
{
    oggpack_buffer opb;
    uint32_t gnum;
    uint32_t gden;
    int n;
    char *psz_desc;

    /* Signal that we want to keep a backup of the kate
     * stream headers. They will be used when switching between
     * kate streams. */
    p_stream->b_force_backup = true;

    /* Cheat and get additionnal info ;) */
    FUNC7( &opb, p_oggpacket->packet, p_oggpacket->bytes);
    FUNC5( &opb, 11*8 ); /* packet type, kate magic, version */
    p_stream->special.kate.i_num_headers = FUNC6( &opb, 8 );
    FUNC5( &opb, 3*8 );
    p_stream->i_granule_shift = FUNC6( &opb, 8 );
    FUNC5( &opb, 8*8 ); /* reserved */
    gnum = FUNC6( &opb, 32 );
    gden = FUNC6( &opb, 32 );
    gden = FUNC1( gden, 1 );
    if ( !gnum || !gden )
        return false;
    FUNC2( &p_stream->dts, gnum, gden );

    p_stream->fmt.psz_language = FUNC4(16);
    if( p_stream->fmt.psz_language )
    {
        for( n = 0; n < 16; n++ )
            p_stream->fmt.psz_language[n] = FUNC6(&opb,8);
        p_stream->fmt.psz_language[15] = 0; /* just in case */
    }
    else
    {
        for( n = 0; n < 16; n++ )
            FUNC6(&opb,8);
    }
    p_stream->fmt.psz_description = FUNC4(16);
    if( p_stream->fmt.psz_description )
    {
        for( n = 0; n < 16; n++ )
            p_stream->fmt.psz_description[n] = FUNC6(&opb,8);
        p_stream->fmt.psz_description[15] = 0; /* just in case */

        /* Now find a localized user readable description for this category */
        psz_desc = FUNC8(FUNC0(p_stream->fmt.psz_description));
        if( psz_desc )
        {
            FUNC3( p_stream->fmt.psz_description );
            p_stream->fmt.psz_description = psz_desc;
        }
    }
    else
    {
        for( n = 0; n < 16; n++ )
            FUNC6(&opb,8);
    }

    return true;
}