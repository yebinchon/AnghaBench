
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stream_t ;


 scalar_t__ memcmp (int const*,char*,int) ;
 int vlc_stream_Peek (int *,int const**,int) ;

__attribute__((used)) static bool IsSpiff(stream_t *s)
{
    const uint8_t *header;
    if (vlc_stream_Peek(s, &header, 36) < 36)
        return 0;
    if (header[0] != 0xff || header[1] != 0xd8 ||
        header[2] != 0xff || header[3] != 0xe8)
        return 0;
    if (memcmp(&header[6], "SPIFF\0", 6))
        return 0;
    return 1;
}
