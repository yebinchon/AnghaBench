
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XXH_errorcode ;
typedef scalar_t__ XXH_endianess ;
typedef int XXH32_state_t ;


 int XXH32_update_endian (int *,void const*,size_t,scalar_t__) ;
 int XXH_CPU_LITTLE_ENDIAN ;
 scalar_t__ XXH_FORCE_NATIVE_FORMAT ;
 scalar_t__ XXH_bigEndian ;
 scalar_t__ XXH_littleEndian ;

XXH_errorcode XXH32_update (XXH32_state_t* state_in, const void* input, size_t len)
{
    XXH_endianess endian_detected = (XXH_endianess)XXH_CPU_LITTLE_ENDIAN;

    if ((endian_detected==XXH_littleEndian) || XXH_FORCE_NATIVE_FORMAT)
        return XXH32_update_endian(state_in, input, len, XXH_littleEndian);
    else
        return XXH32_update_endian(state_in, input, len, XXH_bigEndian);
}
