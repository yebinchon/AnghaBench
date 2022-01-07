
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV1_OBUHasExtensionField (int const*) ;

__attribute__((used)) static inline bool AV1_OBUIsBaseLayer(const uint8_t *p_buf, size_t i_buf)
{
    return !AV1_OBUHasExtensionField(p_buf) || (i_buf < 2) || !(p_buf[1] >> 3);
}
