
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XXH_endianess ;
typedef int XXH32_state_t ;


 unsigned int XXH32_digest_endian (int const*,scalar_t__) ;
 int XXH_CPU_LITTLE_ENDIAN ;
 scalar_t__ XXH_FORCE_NATIVE_FORMAT ;
 scalar_t__ XXH_bigEndian ;
 scalar_t__ XXH_littleEndian ;

unsigned int XXH32_digest (const XXH32_state_t* state_in)
{
    XXH_endianess endian_detected = (XXH_endianess)XXH_CPU_LITTLE_ENDIAN;

    if ((endian_detected==XXH_littleEndian) || XXH_FORCE_NATIVE_FORMAT)
        return XXH32_digest_endian(state_in, XXH_littleEndian);
    else
        return XXH32_digest_endian(state_in, XXH_bigEndian);
}
