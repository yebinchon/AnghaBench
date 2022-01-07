
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int se_name; } ;
typedef TYPE_1__ zfs_snapentry_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
snapentry_compare_by_name(const void *a, const void *b)
{
 const zfs_snapentry_t *se_a = a;
 const zfs_snapentry_t *se_b = b;
 int ret;

 ret = strcmp(se_a->se_name, se_b->se_name);

 if (ret < 0)
  return (-1);
 else if (ret > 0)
  return (1);
 else
  return (0);
}
