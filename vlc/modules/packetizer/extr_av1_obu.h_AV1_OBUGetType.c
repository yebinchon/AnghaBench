
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum av1_obu_type_e { ____Placeholder_av1_obu_type_e } av1_obu_type_e ;



__attribute__((used)) static inline enum av1_obu_type_e AV1_OBUGetType(const uint8_t *p_buf)
{
    return (enum av1_obu_type_e)((p_buf[0] >> 3) & 0x0F);
}
