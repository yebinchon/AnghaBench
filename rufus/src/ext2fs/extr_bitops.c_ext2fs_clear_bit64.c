
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;



int ext2fs_clear_bit64(__u64 nr, void * addr)
{
 int mask, retval;
 unsigned char *ADDR = (unsigned char *) addr;

 ADDR += nr >> 3;
 mask = 1 << (nr & 0x07);
 retval = mask & *ADDR;
 *ADDR &= ~mask;
 return retval;
}
