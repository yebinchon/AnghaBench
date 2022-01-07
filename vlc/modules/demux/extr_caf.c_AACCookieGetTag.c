
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;



__attribute__((used)) static inline bool AACCookieGetTag( uint8_t *p_tag, const uint8_t *p, uint64_t *p_offset, uint64_t i_size )
{
    if( *p_offset + 1 > i_size )
        return 0;

    *p_tag = *( p + *p_offset );
    *p_offset += 1;

    return 1;
}
