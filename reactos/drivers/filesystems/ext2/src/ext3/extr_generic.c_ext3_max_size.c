
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int MAX_LFS_FILESIZE ;

loff_t ext3_max_size(int blkbits, int has_huge_files)
{
    loff_t res;
    loff_t upper_limit = MAX_LFS_FILESIZE;


    if (!has_huge_files) {





        upper_limit = ((loff_t)1 << 32) - 1;


        upper_limit >>= (blkbits - 9);
        upper_limit <<= blkbits;
    }


    res = (loff_t)1 << 32;
    res <<= blkbits;
    res -= 1;


    if (res > upper_limit)
        res = upper_limit;

    return res;
}
