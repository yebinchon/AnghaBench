
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uu_avl_node_compare_info {int (* ac_compare ) (void const*,int ,int ) ;int * ac_found; int ac_private; int ac_right; } ;


 int stub1 (void const*,int ,int ) ;

__attribute__((used)) static int
uu_avl_node_compare(const void *l, const void *r)
{
 struct uu_avl_node_compare_info *info =
     (struct uu_avl_node_compare_info *)l;

 int res = info->ac_compare(r, info->ac_right, info->ac_private);

 if (res == 0) {
  if (info->ac_found == ((void*)0))
   info->ac_found = (void *)r;
  return (-1);
 }
 if (res < 0)
  return (1);
 return (-1);
}
