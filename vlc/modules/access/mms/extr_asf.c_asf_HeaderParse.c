
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_guid_t ;
typedef int var_buffer_t ;
typedef size_t uint8_t ;
typedef int uint64_t ;
typedef int int16_t ;
struct TYPE_5__ {TYPE_1__* stream; void* i_min_data_packet_size; void* i_data_packets_count; void* i_file_size; } ;
typedef TYPE_2__ asf_header_t ;
struct TYPE_4__ {int i_bitrate; void* i_cat; scalar_t__ i_selected; } ;


 void* ASF_CODEC_TYPE_AUDIO ;
 void* ASF_CODEC_TYPE_UNKNOWN ;
 void* ASF_CODEC_TYPE_VIDEO ;
 int asf_object_extended_stream_properties_guid ;
 int asf_object_file_properties_guid ;
 int asf_object_header_extension_guid ;
 int asf_object_header_guid ;
 int asf_object_stream_bitrate_properties ;
 int asf_object_stream_properties_guid ;
 int asf_object_stream_type_audio ;
 int asf_object_stream_type_video ;
 scalar_t__ guidcmp (int *,int *) ;
 int var_buffer_get16 (int *) ;
 void* var_buffer_get32 (int *) ;
 void* var_buffer_get64 (int *) ;
 int var_buffer_get8 (int *) ;
 int var_buffer_getguid (int *,int *) ;
 int var_buffer_getmemory (int *,int *,int) ;
 int var_buffer_initread (int *,size_t*,int) ;
 scalar_t__ var_buffer_readempty (int *) ;

void asf_HeaderParse ( asf_header_t *hdr,
                            uint8_t *p_header, int i_header )
{
    var_buffer_t buffer;
    vlc_guid_t guid;
    uint64_t i_size;

    hdr->i_file_size = 0;
    hdr->i_data_packets_count = 0;
    hdr->i_min_data_packet_size = 0;
    for( unsigned i = 0; i < 128; i++ )
    {
        hdr->stream[i].i_cat = ASF_CODEC_TYPE_UNKNOWN;
        hdr->stream[i].i_selected = 0;
        hdr->stream[i].i_bitrate = -1;
    }

    var_buffer_initread( &buffer, p_header, i_header );
    var_buffer_getguid( &buffer, &guid );

    if( !guidcmp( &guid, &asf_object_header_guid ) )
    {

    }
    var_buffer_getmemory( &buffer, ((void*)0), 30 - 16 );

    for( ;; )
    {
        var_buffer_getguid( &buffer, &guid );
        i_size = var_buffer_get64( &buffer );

        if( guidcmp( &guid, &asf_object_file_properties_guid ) )
        {
            var_buffer_getmemory( &buffer, ((void*)0), 16 );
            hdr->i_file_size = var_buffer_get64( &buffer );
            var_buffer_getmemory( &buffer, ((void*)0), 8 );
            hdr->i_data_packets_count = var_buffer_get64( &buffer );
            var_buffer_getmemory( &buffer, ((void*)0), 8+8+8+4);
            hdr->i_min_data_packet_size = var_buffer_get32( &buffer );

            var_buffer_getmemory( &buffer, ((void*)0), i_size - 24 - 16 - 8 - 8 - 8 - 8-8-8-4 - 4);
        }
        else if( guidcmp( &guid, &asf_object_header_extension_guid ) )
        {

            var_buffer_getmemory( &buffer, ((void*)0), 46 - 24 );
        }
        else if( guidcmp( &guid, &asf_object_extended_stream_properties_guid ) )
        {

            int16_t i_count1, i_count2;
            int i_subsize;

            var_buffer_getmemory( &buffer, ((void*)0), 84 - 24 );

            i_count1 = var_buffer_get16( &buffer );
            i_count2 = var_buffer_get16( &buffer );

            i_subsize = 88;
            for( int i = 0; i < i_count1; i++ )
            {
                int i_len;

                var_buffer_get16( &buffer );
                i_len = var_buffer_get16( &buffer );
                var_buffer_getmemory( &buffer, ((void*)0), i_len );

                i_subsize += 4 + i_len;
            }

            for( int i = 0; i < i_count2; i++ )
            {
                int i_len;
                var_buffer_getmemory( &buffer, ((void*)0), 16 + 2 );
                i_len = var_buffer_get32( &buffer );
                var_buffer_getmemory( &buffer, ((void*)0), i_len );

                i_subsize += 16 + 6 + i_len;
            }

            if( i_size - i_subsize <= 24 )
            {
                var_buffer_getmemory( &buffer, ((void*)0), i_size - i_subsize );
            }


        }
        else if( guidcmp( &guid, &asf_object_stream_properties_guid ) )
        {
            int i_stream_id;
            vlc_guid_t stream_type;

            var_buffer_getguid( &buffer, &stream_type );
            var_buffer_getmemory( &buffer, ((void*)0), 32 );

            i_stream_id = var_buffer_get8( &buffer ) & 0x7f;
            var_buffer_getmemory( &buffer, ((void*)0), i_size - 24 - 32 - 16 - 1);

            if( guidcmp( &stream_type, &asf_object_stream_type_video ) )
            {
                hdr->stream[i_stream_id].i_cat = ASF_CODEC_TYPE_VIDEO;
            }
            else if( guidcmp( &stream_type, &asf_object_stream_type_audio ) )
            {
                hdr->stream[i_stream_id].i_cat = ASF_CODEC_TYPE_AUDIO;
            }
            else
            {
                hdr->stream[i_stream_id].i_cat = ASF_CODEC_TYPE_UNKNOWN;
            }
        }
        else if ( guidcmp( &guid, &asf_object_stream_bitrate_properties ) )
        {
            int i_count;
            uint8_t i_stream_id;

            i_count = var_buffer_get16( &buffer );
            i_size -= 2;
            while( i_count > 0 )
            {
                i_stream_id = var_buffer_get16( &buffer )&0x7f;
                hdr->stream[i_stream_id].i_bitrate = var_buffer_get32( &buffer );
                i_count--;
                i_size -= 6;
            }
            var_buffer_getmemory( &buffer, ((void*)0), i_size - 24 );
        }
        else
        {

            var_buffer_getmemory( &buffer, ((void*)0), i_size - 24 );
        }

        if( var_buffer_readempty( &buffer ) )
            return;
    }
}
