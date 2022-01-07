
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ se_spa; scalar_t__ se_objsetid; } ;
typedef TYPE_1__ zfs_snapentry_t ;
typedef scalar_t__ ulong_t ;



__attribute__((used)) static int
snapentry_compare_by_objsetid(const void *a, const void *b)
{
 const zfs_snapentry_t *se_a = a;
 const zfs_snapentry_t *se_b = b;

 if (se_a->se_spa != se_b->se_spa)
  return ((ulong_t)se_a->se_spa < (ulong_t)se_b->se_spa ? -1 : 1);

 if (se_a->se_objsetid < se_b->se_objsetid)
  return (-1);
 else if (se_a->se_objsetid > se_b->se_objsetid)
  return (1);
 else
  return (0);
}
