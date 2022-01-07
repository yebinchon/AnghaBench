
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int z_flags; } ;


 TYPE_1__* ITOZSB (struct inode*) ;
 int ZSB_XATTR ;

__attribute__((used)) static int
__zpl_xattr_user_list(struct inode *ip, char *list, size_t list_size,
    const char *name, size_t name_len)
{
 return (ITOZSB(ip)->z_flags & ZSB_XATTR);
}
