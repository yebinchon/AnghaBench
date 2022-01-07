
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stream_t ;


 scalar_t__ GetWLE (int const*) ;
 int vlc_stream_Peek (int *,int const**,int) ;

__attribute__((used)) static bool IsPcx(stream_t *s)
{
    const uint8_t *header;
    if (vlc_stream_Peek(s, &header, 66) < 66)
        return 0;
    if (header[0] != 0x0A ||
        (header[1] != 0x00 && header[1] != 0x02 &&
         header[1] != 0x03 && header[1] != 0x05) ||
        (header[2] != 0 && header[2] != 1) ||
        (header[3] != 1 && header[3] != 2 &&
         header[3] != 4 && header[3] != 8) ||
        header[64] != 0 ||
        header[65] == 0 || header[65] > 4)
        return 0;
    if (GetWLE(&header[4]) > GetWLE(&header[8]) ||
        GetWLE(&header[6]) > GetWLE(&header[10]))
        return 0;
    return 1;
}
