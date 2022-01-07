
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t FLV_FILE_HEADER_LEN ;
 size_t FLV_TAG_HEADER_LEN ;
 int SCRIPT_TAG ;
 int const* flv_header_bytes ;
 int * malloc (size_t) ;
 int memcpy (int *,int const*,size_t) ;
 int memset (int *,int ,int) ;
 int write_int_24 (int *,size_t) ;
 int write_int_32 (int *,size_t) ;

__attribute__((used)) static size_t write_flv_header_and_metadata(
    uint8_t **pp_buffer,
    const uint8_t *p_metadata_payload,
    size_t metadata_payload_len )
{
    size_t metadata_packet_len;
    if ( metadata_payload_len > 0 && p_metadata_payload )
        metadata_packet_len = FLV_TAG_HEADER_LEN + metadata_payload_len;
    else
        metadata_packet_len = 0;
    size_t data_len = FLV_FILE_HEADER_LEN + metadata_packet_len;

    *pp_buffer = malloc( data_len );
    if ( ! *pp_buffer )
    {
        return 0;
    }


    memcpy( *pp_buffer, flv_header_bytes, FLV_FILE_HEADER_LEN );

    if ( metadata_packet_len > 0 )
    {
        uint8_t *p = *pp_buffer + FLV_FILE_HEADER_LEN;


        *p = SCRIPT_TAG;
        p++;


        write_int_24( p, metadata_payload_len );
        p += 3;


        memset( p, 0, 7 );
        p += 7;


        memcpy( p, p_metadata_payload, metadata_payload_len );
        p += metadata_payload_len;


        write_int_32( p, metadata_packet_len );
    }

    return data_len;
}
