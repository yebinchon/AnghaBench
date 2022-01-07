
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ext2fs_test_bit(unsigned int nr, const void * addr)
{
 int mask;
 const unsigned char *ADDR = (const unsigned char *) addr;

 ADDR += nr >> 3;
 mask = 1 << (nr & 0x07);
 return (mask & *ADDR);
}
