
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef enum av1_obu_metadata_type_e { ____Placeholder_av1_obu_metadata_type_e } av1_obu_metadata_type_e ;


 int AV1_METADATA_TYPE_RESERVED ;
 int AV1_OBUSkipHeader (scalar_t__ const**,size_t*) ;
 int INT64_C (int) ;
 int leb128 (scalar_t__ const*,size_t,scalar_t__*) ;

__attribute__((used)) static inline enum av1_obu_metadata_type_e
        AV1_OBUGetMetadataType(const uint8_t *p_buf, size_t i_buf)
{
    if(!AV1_OBUSkipHeader(&p_buf, &i_buf) || i_buf < 1)
        return AV1_METADATA_TYPE_RESERVED;

    uint8_t i_len;
    uint64_t i_type = leb128(p_buf, i_buf, &i_len);
    if(i_len == 0 || i_type > ((INT64_C(1) << 32) - 1))
        return AV1_METADATA_TYPE_RESERVED;
    return (enum av1_obu_metadata_type_e) i_type;
}
