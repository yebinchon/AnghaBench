
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* i_frame_size; void* i_substream_header_size; int syncword; } ;
typedef TYPE_1__ vlc_dts_header_t ;
typedef scalar_t__ uint8_t ;
typedef void* uint32_t ;
typedef void* uint16_t ;
typedef int bs_t ;


 int DTS_SYNC_SUBSTREAM ;
 int VLC_DTS_HEADER_SIZE ;
 int VLC_SUCCESS ;
 int bs_init (int *,void const*,int ) ;
 void* bs_read (int *,int) ;
 scalar_t__ bs_read1 (int *) ;
 int bs_skip (int *,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int dts_header_ParseSubstream( vlc_dts_header_t *p_header,
                                      const void *p_buffer )
{
    bs_t s;
    bs_init( &s, p_buffer, VLC_DTS_HEADER_SIZE );
    bs_skip( &s, 32 + 8 + 2 );
    uint8_t bHeaderSizeType = bs_read1( &s );
    uint32_t nuBits4ExSSFsize;
    uint16_t nuExtSSHeaderSize;
    if( bHeaderSizeType == 0 )
    {
        nuExtSSHeaderSize = bs_read( &s, 8 );
        nuBits4ExSSFsize = bs_read( &s, 16 );
    }
    else
    {
        nuExtSSHeaderSize = bs_read( &s, 12 );
        nuBits4ExSSFsize = bs_read( &s, 20 );
    }
    memset( p_header, 0, sizeof(*p_header) );
    p_header->syncword = DTS_SYNC_SUBSTREAM;
    p_header->i_substream_header_size = nuExtSSHeaderSize + 1;
    p_header->i_frame_size = nuBits4ExSSFsize + 1;
    return VLC_SUCCESS;
}
