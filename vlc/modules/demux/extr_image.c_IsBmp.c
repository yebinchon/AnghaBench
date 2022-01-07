
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int stream_t ;


 int GetDWLE (int const*) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int vlc_stream_Peek (int *,int const**,int) ;

__attribute__((used)) static bool IsBmp(stream_t *s)
{
    const uint8_t *header;
    if (vlc_stream_Peek(s, &header, 18) < 18)
        return 0;
    if (memcmp(header, "BM", 2) &&
        memcmp(header, "BA", 2) &&
        memcmp(header, "CI", 2) &&
        memcmp(header, "CP", 2) &&
        memcmp(header, "IC", 2) &&
        memcmp(header, "PT", 2))
        return 0;
    uint32_t file_size = GetDWLE(&header[2]);
    uint32_t data_offset = GetDWLE(&header[10]);
    uint32_t header_size = GetDWLE(&header[14]);
    if (file_size != 14 && file_size != 14 + header_size &&
        file_size <= data_offset)
        return 0;
    if (data_offset < header_size + 14)
        return 0;
    if (header_size != 12 && header_size < 40)
        return 0;
    return 1;
}
