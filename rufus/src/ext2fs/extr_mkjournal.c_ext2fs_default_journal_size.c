
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;



int ext2fs_default_journal_size(__u64 num_blocks)
{
 if (num_blocks < 2048)
  return -1;
 if (num_blocks < 32768)
  return (1024);
 if (num_blocks < 256*1024)
  return (4096);
 if (num_blocks < 512*1024)
  return (8192);
 if (num_blocks < 4096*1024)
  return (16384);
 if (num_blocks < 8192*1024)
  return (32768);
 if (num_blocks < 16384*1024)
  return (65536);
 if (num_blocks < 32768*1024)
  return (131072);
 return 262144;
}
