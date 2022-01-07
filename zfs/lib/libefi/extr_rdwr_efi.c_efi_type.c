
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtoc {int dummy; } ;
typedef struct vtoc extvtoc ;


 int DKIOCGEXTVTOC ;
 int DKIOCGVTOC ;
 int ENOSYS ;
 scalar_t__ ENOTSUP ;
 scalar_t__ ENOTTY ;
 scalar_t__ errno ;
 int ioctl (int,int ,struct vtoc*) ;

int
efi_type(int fd)
{
 return (ENOSYS);

}
