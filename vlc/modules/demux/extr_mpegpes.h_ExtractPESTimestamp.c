
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stime_t ;


 int GetPESTimestamp (int const*) ;

__attribute__((used)) static inline bool ExtractPESTimestamp( const uint8_t *p_data, uint8_t i_flags, stime_t *ret )
{


    if((p_data[0] & 0xC1) != 0x01 ||
       (p_data[2] & 0x01) != 0x01 ||
       (p_data[4] & 0x01) != 0x01 ||
       (p_data[0] & 0x30) == 0 ||
       (p_data[0] >> 5) > i_flags )
        return 0;


    *ret = GetPESTimestamp( p_data );
    return 1;
}
