
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stream_t ;
typedef int int64_t ;


 scalar_t__ GetWLE (int const*) ;
 int STREAM_CAN_SEEK ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int stream_Size (int *) ;
 scalar_t__ vlc_stream_Control (int *,int ,int*) ;
 int vlc_stream_Peek (int *,int const**,int) ;
 scalar_t__ vlc_stream_Seek (int *,int const) ;
 int vlc_stream_Tell (int *) ;

__attribute__((used)) static bool IsTarga(stream_t *s)
{



    const uint8_t *header;
    if (vlc_stream_Peek(s, &header, 18) < 18)
        return 0;
    if (header[1] > 1)
        return 0;
    if ((header[1] != 0 || header[3 + 4] != 0) &&
        header[3 + 4] != 8 &&
        header[3 + 4] != 15 && header[3 + 4] != 16 &&
        header[3 + 4] != 24 && header[3 + 4] != 32)
        return 0;
    if ((header[2] > 3 && header[2] < 9) || header[2] > 11)
        return 0;
    if (GetWLE(&header[8 + 4]) <= 0 ||
        GetWLE(&header[8 + 6]) <= 0)
        return 0;
    if (header[8 + 8] != 8 &&
        header[8 + 8] != 15 && header[8 + 8] != 16 &&
        header[8 + 8] != 24 && header[8 + 8] != 32)
        return 0;
    if (header[8 + 9] & 0xc0)
        return 0;

    const int64_t size = stream_Size(s);
    if (size <= 18 + 26)
        return 0;
    bool can_seek;
    if (vlc_stream_Control(s, STREAM_CAN_SEEK, &can_seek) || !can_seek)
        return 0;

    const int64_t position = vlc_stream_Tell(s);
    if (vlc_stream_Seek(s, size - 26))
        return 0;

    const uint8_t *footer;
    if (vlc_stream_Peek(s, &footer, 26) < 26
     || memcmp(&footer[8], "TRUEVISION-XFILE.\x00", 18))
        return 0;

    return vlc_stream_Seek(s, position) == 0;
}
