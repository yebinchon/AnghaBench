
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* labels; } ;
typedef TYPE_1__ cksum_record_t ;


 int VDEV_LABELS ;

__attribute__((used)) static int
first_label(cksum_record_t *rec)
{
 for (int i = 0; i < VDEV_LABELS; i++)
  if (rec->labels[i])
   return (i);

 return (-1);
}
