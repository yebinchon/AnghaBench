
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int dv_get_audio_sample_count( const uint8_t *p_buffer, int i_dsf )
{
    int i_samples = p_buffer[0] & 0x3f;
    switch( (p_buffer[3] >> 3) & 0x07 )
    {
    case 0:
        return i_samples + (i_dsf ? 1896 : 1580);
    case 1:
        return i_samples + (i_dsf ? 1742 : 1452);
    case 2:
    default:
        return i_samples + (i_dsf ? 1264 : 1053);
    }
}
