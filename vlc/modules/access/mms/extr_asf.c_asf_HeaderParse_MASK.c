#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_guid_t ;
typedef  int /*<<< orphan*/  var_buffer_t ;
typedef  size_t uint8_t ;
typedef  int uint64_t ;
typedef  int int16_t ;
struct TYPE_5__ {TYPE_1__* stream; void* i_min_data_packet_size; void* i_data_packets_count; void* i_file_size; } ;
typedef  TYPE_2__ asf_header_t ;
struct TYPE_4__ {int i_bitrate; void* i_cat; scalar_t__ i_selected; } ;

/* Variables and functions */
 void* ASF_CODEC_TYPE_AUDIO ; 
 void* ASF_CODEC_TYPE_UNKNOWN ; 
 void* ASF_CODEC_TYPE_VIDEO ; 
 int /*<<< orphan*/  asf_object_extended_stream_properties_guid ; 
 int /*<<< orphan*/  asf_object_file_properties_guid ; 
 int /*<<< orphan*/  asf_object_header_extension_guid ; 
 int /*<<< orphan*/  asf_object_header_guid ; 
 int /*<<< orphan*/  asf_object_stream_bitrate_properties ; 
 int /*<<< orphan*/  asf_object_stream_properties_guid ; 
 int /*<<< orphan*/  asf_object_stream_type_audio ; 
 int /*<<< orphan*/  asf_object_stream_type_video ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

void  FUNC9 ( asf_header_t *hdr,
                            uint8_t *p_header, int i_header )
{
    var_buffer_t buffer;
    vlc_guid_t  guid;
    uint64_t    i_size;

    hdr->i_file_size = 0;
    hdr->i_data_packets_count = 0;
    hdr->i_min_data_packet_size = 0;
    for( unsigned i = 0; i < 128; i++ )
    {
        hdr->stream[i].i_cat = ASF_CODEC_TYPE_UNKNOWN;
        hdr->stream[i].i_selected = 0;
        hdr->stream[i].i_bitrate = -1;
    }

    FUNC7( &buffer, p_header, i_header );
    FUNC5( &buffer, &guid );

    if( !FUNC0( &guid, &asf_object_header_guid ) )
    {
        /* ERROR: */
    }
    FUNC6( &buffer, NULL, 30 - 16 );

    for( ;; )
    {
        FUNC5( &buffer, &guid );
        i_size = FUNC3( &buffer );

        if( FUNC0( &guid, &asf_object_file_properties_guid ) )
        {
            FUNC6( &buffer, NULL, 16 );
            hdr->i_file_size            = FUNC3( &buffer );
            FUNC6( &buffer, NULL, 8 );
            hdr->i_data_packets_count   = FUNC3( &buffer );
            FUNC6( &buffer, NULL, 8+8+8+4);
            hdr->i_min_data_packet_size = FUNC2( &buffer );

            FUNC6( &buffer, NULL, i_size - 24 - 16 - 8 - 8 - 8 - 8-8-8-4 - 4);
        }
        else if( FUNC0( &guid, &asf_object_header_extension_guid ) )
        {
            /* Enter it */
            FUNC6( &buffer, NULL, 46 - 24 );
        }
        else if( FUNC0( &guid, &asf_object_extended_stream_properties_guid ) )
        {
            /* Grrrrrr */
            int16_t i_count1, i_count2;
            int i_subsize;

            FUNC6( &buffer, NULL, 84 - 24 );

            i_count1 = FUNC1( &buffer );
            i_count2 = FUNC1( &buffer );

            i_subsize = 88;
            for( int i = 0; i < i_count1; i++ )
            {
                int i_len;

                FUNC1( &buffer );
                i_len = FUNC1( &buffer );
                FUNC6( &buffer, NULL, i_len );

                i_subsize += 4 + i_len;
            }

            for( int i = 0; i < i_count2; i++ )
            {
                int i_len;
                FUNC6( &buffer, NULL, 16 + 2 );
                i_len = FUNC2( &buffer );
                FUNC6( &buffer, NULL, i_len );

                i_subsize += 16 + 6 + i_len;
            }

            if( i_size - i_subsize <= 24 )
            {
                FUNC6( &buffer, NULL, i_size - i_subsize );
            }
            /* It's a hack we just skip the first part of the object until
             * the embed stream properties if any (ugly, but whose fault ?) */
        }
        else if( FUNC0( &guid, &asf_object_stream_properties_guid ) )
        {
            int     i_stream_id;
            vlc_guid_t  stream_type;

            FUNC5( &buffer, &stream_type );
            FUNC6( &buffer, NULL, 32 );

            i_stream_id = FUNC4( &buffer ) & 0x7f;
            FUNC6( &buffer, NULL, i_size - 24 - 32 - 16 - 1);

            if( FUNC0( &stream_type, &asf_object_stream_type_video ) )
            {
                hdr->stream[i_stream_id].i_cat = ASF_CODEC_TYPE_VIDEO;
            }
            else if( FUNC0( &stream_type, &asf_object_stream_type_audio ) )
            {
                hdr->stream[i_stream_id].i_cat = ASF_CODEC_TYPE_AUDIO;
            }
            else
            {
                hdr->stream[i_stream_id].i_cat = ASF_CODEC_TYPE_UNKNOWN;
            }
        }
        else if ( FUNC0( &guid, &asf_object_stream_bitrate_properties ) )
        {
            int     i_count;
            uint8_t i_stream_id;

            i_count = FUNC1( &buffer );
            i_size -= 2;
            while( i_count > 0 )
            {
                i_stream_id = FUNC1( &buffer )&0x7f;
                hdr->stream[i_stream_id].i_bitrate =  FUNC2( &buffer );
                i_count--;
                i_size -= 6;
            }
            FUNC6( &buffer, NULL, i_size - 24 );
        }
        else
        {
            // skip unknown guid
            FUNC6( &buffer, NULL, i_size - 24 );
        }

        if( FUNC8( &buffer ) )
            return;
    }
}