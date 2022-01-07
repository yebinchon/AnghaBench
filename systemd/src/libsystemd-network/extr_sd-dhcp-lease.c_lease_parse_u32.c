
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int be32_t ;


 int EINVAL ;
 int assert (scalar_t__ const*) ;
 scalar_t__ unaligned_read_be32 (int *) ;

__attribute__((used)) static int lease_parse_u32(const uint8_t *option, size_t len, uint32_t *ret, uint32_t min) {
        assert(option);
        assert(ret);

        if (len != 4)
                return -EINVAL;

        *ret = unaligned_read_be32((be32_t*) option);
        if (*ret < min)
                *ret = min;

        return 0;
}
