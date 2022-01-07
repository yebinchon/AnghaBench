
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int i_avgbytespersec; int i_block_align; int i_channels; } ;
struct TYPE_6__ {int i_width; int i_height; } ;
struct TYPE_8__ {TYPE_2__ audio; TYPE_1__ video; } ;
struct TYPE_9__ {int i_default_len; int i_buffer_size; int i_padding_1; int i_size; TYPE_3__ header; int i_padding_0; int i_bits_per_sample; int i_samples_per_unit; int i_time_unit; int * sub_type; int * stream_type; int i_packet_type; } ;
typedef TYPE_4__ oggds_header_t ;
typedef int int32_t ;



 int SetDWLE (int *,int) ;
 int SetQWLE (int *,int ) ;
 int SetWLE (int *,int ) ;

 int memcpy (int *,int *,int) ;

__attribute__((used)) static int32_t OggFillDsHeader( uint8_t *p_buffer, oggds_header_t *p_oggds_header, int i_cat )
{
    int index = 0;
    p_buffer[index] = p_oggds_header->i_packet_type;
    index++;
    memcpy( &p_buffer[index], p_oggds_header->stream_type, sizeof(p_oggds_header->stream_type) );
    index += sizeof(p_oggds_header->stream_type);
    memcpy(&p_buffer[index], p_oggds_header->sub_type, sizeof(p_oggds_header->sub_type) );
    index += sizeof(p_oggds_header->sub_type);


    uint8_t *p_isize = &p_buffer[index];
    index += 4;

    SetQWLE( &p_buffer[index], p_oggds_header->i_time_unit );
    index += 8;
    SetQWLE( &p_buffer[index], p_oggds_header->i_samples_per_unit );
    index += 8;
    SetDWLE( &p_buffer[index], p_oggds_header->i_default_len );
    index += 4;
    SetDWLE( &p_buffer[index], p_oggds_header->i_buffer_size );
    index += 4;
    SetWLE( &p_buffer[index], p_oggds_header->i_bits_per_sample );
    index += 2;
    SetWLE( &p_buffer[index], p_oggds_header->i_padding_0 );
    index += 2;

    switch( i_cat )
    {
    case 128:
        SetDWLE( &p_buffer[index], p_oggds_header->header.video.i_width );
        SetDWLE( &p_buffer[index+4], p_oggds_header->header.video.i_height );
        break;
    case 129:
        SetWLE( &p_buffer[index], p_oggds_header->header.audio.i_channels );
        SetWLE( &p_buffer[index+2], p_oggds_header->header.audio.i_block_align );
        SetDWLE( &p_buffer[index+4], p_oggds_header->header.audio.i_avgbytespersec );
        break;
    }
    index += 8;
    SetDWLE( &p_buffer[index], p_oggds_header->i_padding_1 );
    index += 4;


    if( p_oggds_header->i_size > 0 )
    {
        memcpy( &p_buffer[index], (uint8_t *) p_oggds_header + sizeof(*p_oggds_header), p_oggds_header->i_size );
        index += p_oggds_header->i_size;
    }

    SetDWLE( p_isize, index-1 );
    return index;
}
