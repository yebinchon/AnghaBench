
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int ext2fs_le16_to_cpu (int ) ;

__attribute__((used)) static __u16 disk_to_host16(__u16 x)
{
 return ext2fs_le16_to_cpu(x);
}
