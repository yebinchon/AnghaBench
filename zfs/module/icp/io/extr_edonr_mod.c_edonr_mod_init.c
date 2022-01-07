
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mod_install (int *) ;
 int modlinkage ;

int
edonr_mod_init(void)
{
 int error;

 if ((error = mod_install(&modlinkage)) != 0)
  return (error);

 return (0);
}
