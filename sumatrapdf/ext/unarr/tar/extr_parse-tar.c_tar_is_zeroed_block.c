
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t TAR_BLOCK_SIZE ;

__attribute__((used)) static bool tar_is_zeroed_block(const char *data)
{
    size_t i;
    for (i = 0; i < TAR_BLOCK_SIZE; i++) {
        if (data[i] != 0)
            return 0;
    }
    return 1;
}
