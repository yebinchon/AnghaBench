
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stream_t ;


 int GetDWBE (int const*) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int vlc_stream_Peek (int *,int const**,int) ;

__attribute__((used)) static bool IsLbm(stream_t *s)
{
    const uint8_t *header;
    if (vlc_stream_Peek(s, &header, 12) < 12)
        return 0;
    if (memcmp(&header[0], "FORM", 4) ||
        GetDWBE(&header[4]) <= 4 ||
        (memcmp(&header[8], "ILBM", 4) && memcmp(&header[8], "PBM ", 4)))
        return 0;
    return 1;
}
