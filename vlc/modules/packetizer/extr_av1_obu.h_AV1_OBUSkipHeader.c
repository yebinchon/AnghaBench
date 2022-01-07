
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int AV1_OBUHasExtensionField (scalar_t__ const*) ;
 scalar_t__ AV1_OBUHasSizeField (scalar_t__ const*) ;
 int AV1_OBUSize (scalar_t__ const*,size_t,scalar_t__*) ;

__attribute__((used)) static bool AV1_OBUSkipHeader(const uint8_t **pp_buf, size_t *pi_buf)
{
    if(*pi_buf < 1)
        return 0;
    size_t i_header = 1 + !!AV1_OBUHasExtensionField(*pp_buf);
    if(AV1_OBUHasSizeField(*pp_buf))
    {
        uint8_t i_len;
        (void) AV1_OBUSize(*pp_buf, *pi_buf, &i_len);
        if(i_len == 0)
            return 0;
        i_header += i_len;
    }
    if(i_header > *pi_buf)
        return 0;
    *pp_buf += i_header;
    *pi_buf -= i_header;
    return 1;
}
