
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_partition; } ;
typedef TYPE_1__ udf_t ;
typedef int int16_t ;



int16_t udf_get_part_number(const udf_t *p_udf)
{
  if (!p_udf) return -1;
  return p_udf->i_partition;
}
