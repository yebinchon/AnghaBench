
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int stream_t ;


 int GetWBE (int const*) ;
 int find_jpeg_marker (int*,int const*,int) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int vlc_stream_Peek (int *,int const**,int) ;

__attribute__((used)) static bool IsMxpeg(stream_t *s)
{
    const uint8_t *header;
    int size = vlc_stream_Peek(s, &header, 256);
    int position = 0;

    if (find_jpeg_marker(&position, header, size) != 0xd8 || position > size-2)
        return 0;
    if (find_jpeg_marker(&position, header, position + 2) != 0xe0)
        return 0;

    if (position + 2 > size)
        return 0;


    uint32_t header_size = GetWBE(&header[position]);
    position += header_size;


    if (position + 6 > size)
    {
        size = position + 6;
        if( vlc_stream_Peek (s, &header, size) < size )
            return 0;
    }

    if ( !(header[position] == 0xFF && header[position+1] == 0xFE) )
        return 0;
    position += 2;
    header_size = GetWBE (&header[position]);


    if (!memcmp (&header[position+2], "MXF\0", 4) )
        return 1;


    size = position + header_size + 8;
    if (vlc_stream_Peek(s, &header, size ) < size)
        return 0;

    position += header_size;
    if ( !(header[position] == 0xFF && header[position+1] == 0xFE) )
        return 0;

    position += 4;

    if (memcmp (&header[position], "MXF\0", 4) )
        return 0;

    return 1;
}
