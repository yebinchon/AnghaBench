
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int capable (int ) ;

__attribute__((used)) static int
__zpl_xattr_trusted_list(struct inode *ip, char *list, size_t list_size,
    const char *name, size_t name_len)
{
 return (capable(CAP_SYS_ADMIN));
}
