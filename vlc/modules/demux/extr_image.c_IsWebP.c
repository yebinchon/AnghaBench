
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stream_t ;


 scalar_t__ memcmp (int const*,char*,int) ;
 int vlc_stream_Peek (int *,int const**,int) ;
 scalar_t__ vlc_stream_Seek (int *,int) ;

__attribute__((used)) static bool IsWebP(stream_t *s)
{
    const uint8_t *header;
    if (vlc_stream_Peek(s, &header, 20) < 20)
        return 0;
    if (memcmp(&header[0], "RIFF", 4))
        return 0;

    if (memcmp(&header[8], "WEBPVP8 ", 8))
        return 0;

    return vlc_stream_Seek(s, 20) == 0;
}
