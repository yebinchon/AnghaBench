
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ fd; } ;
typedef TYPE_2__ Dimension ;



__attribute__((used)) static int
cmp_dimension_id(const void *left, const void *right)
{
 const Dimension *diml = (Dimension *) left;
 const Dimension *dimr = (Dimension *) right;

 if (diml->fd.id < dimr->fd.id)
  return -1;

 if (diml->fd.id > dimr->fd.id)
  return 1;

 return 0;
}
