
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;

__attribute__((used)) static inline int ext2fsP_is_disk_device(mode_t mode)
{



 return S_ISBLK(mode);

}
