
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tree; } ;
typedef TYPE_1__ zed_strings_t ;


 int EINVAL ;
 int avl_numnodes (int *) ;
 int errno ;

int
zed_strings_count(zed_strings_t *zsp)
{
 if (!zsp) {
  errno = EINVAL;
  return (-1);
 }
 return (avl_numnodes(&zsp->tree));
}
