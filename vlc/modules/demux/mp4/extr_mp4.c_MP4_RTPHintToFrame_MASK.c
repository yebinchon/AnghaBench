#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_9__ {int type; int trackrefindex; scalar_t__ length; scalar_t__ sampleoffset; int bytesperblock; int samplesperblock; void* samplenumber; } ;
typedef  TYPE_1__ mp4_rtpsampleconstructor_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_10__ {int* p_buffer; int i_buffer; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */
 int CONSTRUCTORSIZE ; 
 void* FUNC0 (int*) ; 
 void* FUNC1 (int*) ; 
 int RTPPACKETSIZE ; 
 int SAMPLEHEADERSIZE ; 
 TYPE_2__* FUNC2 (scalar_t__) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static block_t * FUNC8( demux_t *p_demux, block_t *p_block, uint32_t packetcount )
{
    uint8_t *p_slice = p_block->p_buffer + SAMPLEHEADERSIZE;
    block_t *p_newblock = NULL;
    size_t i_payload = 0;

    if( p_block->i_buffer < SAMPLEHEADERSIZE + RTPPACKETSIZE + CONSTRUCTORSIZE )
    {
        FUNC7( p_demux, "Sample not large enough for necessary structs");
        FUNC4( p_block );
        return NULL;
    }

    for( uint32_t i = 0; i < packetcount; ++i )
    {
        if( (size_t)(p_slice - p_block->p_buffer) + RTPPACKETSIZE + CONSTRUCTORSIZE > p_block->i_buffer )
            goto error;

        /* skip RTP header in sample. Could be used to detect packet losses */
        p_slice += RTPPACKETSIZE;

        mp4_rtpsampleconstructor_t sample_cons;

        sample_cons.type =                      p_slice[0];
        sample_cons.trackrefindex =             p_slice[1];
        sample_cons.length =          FUNC1(  &p_slice[2] );
        sample_cons.samplenumber =    FUNC0( &p_slice[4] );
        sample_cons.sampleoffset =    FUNC0( &p_slice[8] );
        sample_cons.bytesperblock =   FUNC1(  &p_slice[12] );
        sample_cons.samplesperblock = FUNC1(  &p_slice[14] );

        /* skip packet constructor */
        p_slice += CONSTRUCTORSIZE;

        /* check that is RTPsampleconstructor, referencing itself and no weird audio stuff */
        if( sample_cons.type != 2||sample_cons.trackrefindex != -1
            ||sample_cons.samplesperblock != 1||sample_cons.bytesperblock != 1 )
        {
            FUNC7(p_demux, "Unhandled constructor in RTP Reception Hint Track. Type:%u", sample_cons.type);
            goto error;
        }

        /* slice doesn't fit in buffer */
        if( sample_cons.sampleoffset + sample_cons.length > p_block->i_buffer)
        {
            FUNC7(p_demux, "Sample buffer is smaller than sample" );
            goto error;
        }

        block_t *p_realloc = ( p_newblock ) ?
                             FUNC3( p_newblock, 0, i_payload + sample_cons.length + 4 ):
                             FUNC2( i_payload + sample_cons.length + 4 );
        if( !p_realloc )
            goto error;

        p_newblock = p_realloc;
        uint8_t *p_dst = &p_newblock->p_buffer[i_payload];

        const uint8_t* p_src = p_block->p_buffer + sample_cons.sampleoffset;
        uint8_t i_type = (*p_src) & ((1<<5)-1);

        const uint8_t synccode[4] = { 0, 0, 0, 1 };
        if( FUNC5( p_src, synccode, 4 ) )
        {
            if( i_type == 7 || i_type == 8 )
                *p_dst++=0;

            p_dst[0] = 0;
            p_dst[1] = 0;
            p_dst[2] = 1;
            p_dst += 3;
        }

        FUNC6( p_dst, p_src, sample_cons.length );
        p_dst += sample_cons.length;

        i_payload = p_dst - p_newblock->p_buffer;
    }

    FUNC4( p_block );
    if( p_newblock )
        p_newblock->i_buffer = i_payload;
    return p_newblock;

error:
    FUNC4( p_block );
    if( p_newblock )
        FUNC4( p_newblock );
    return NULL;
}