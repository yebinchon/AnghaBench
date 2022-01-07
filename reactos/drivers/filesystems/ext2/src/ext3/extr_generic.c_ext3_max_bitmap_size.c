
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int EXT3_NDIR_BLOCKS ;
 int MAX_LFS_FILESIZE ;

loff_t ext3_max_bitmap_size(int bits, int has_huge_files)
{
    loff_t res = EXT3_NDIR_BLOCKS;
    int meta_blocks;
    loff_t upper_limit;
    if (!has_huge_files) {





        upper_limit = ((loff_t)1 << 32) - 1;


        upper_limit >>= (bits - 9);

    } else {






        upper_limit = ((loff_t)1 << 48) - 1;

    }


    meta_blocks = 1;

    meta_blocks += 1 + ((loff_t)1 << (bits-2));

    meta_blocks += 1 + ((loff_t)1 << (bits-2)) + ((loff_t)1 << (2*(bits-2)));

    upper_limit -= meta_blocks;
    upper_limit <<= bits;

    res += (loff_t)1 << (bits-2);
    res += (loff_t)1 << (2*(bits-2));
    res += (loff_t)1 << (3*(bits-2));
    res <<= bits;
    if (res > upper_limit)
        res = upper_limit;

    if (res > MAX_LFS_FILESIZE)
        res = MAX_LFS_FILESIZE;

    return res;
}
