
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ext2fs_needs_large_file_feature(unsigned long long file_size)
{
 return file_size >= 0x80000000ULL;
}
