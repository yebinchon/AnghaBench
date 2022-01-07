
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stream_t ;
typedef int ssize_t ;


 int FindJpegMarker (int*,int const*,int) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int vlc_stream_Peek (int *,int const**,int) ;

__attribute__((used)) static bool IsExif(stream_t *s)
{
    const uint8_t *header;
    ssize_t size = vlc_stream_Peek(s, &header, 256);
    if (size == -1)
        return 0;
    int position = 0;

    if (FindJpegMarker(&position, header, size) != 0xd8)
        return 0;
    if (FindJpegMarker(&position, header, size) != 0xe1)
        return 0;
    position += 2;
    if (position + 5 > size)
        return 0;
    if (memcmp(&header[position], "Exif\0", 5))
        return 0;
    return 1;
}
