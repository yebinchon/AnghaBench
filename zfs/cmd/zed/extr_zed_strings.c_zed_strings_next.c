
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iteratorp; int tree; } ;
typedef TYPE_1__ zed_strings_t ;
struct TYPE_5__ {char const* val; } ;
typedef TYPE_2__ zed_strings_node_t ;


 scalar_t__ AVL_NEXT (int *,scalar_t__) ;
 int EINVAL ;
 int errno ;

const char *
zed_strings_next(zed_strings_t *zsp)
{
 if (!zsp) {
  errno = EINVAL;
  return (((void*)0));
 }
 if (!zsp->iteratorp)
  return (((void*)0));

 zsp->iteratorp = AVL_NEXT(&zsp->tree, zsp->iteratorp);
 if (!zsp->iteratorp)
  return (((void*)0));

 return (((zed_strings_node_t *)zsp->iteratorp)->val);
}
