
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ b_xa; } ;
typedef TYPE_1__ iso9660_t ;


 scalar_t__ yep ;

bool
iso9660_ifs_is_xa (const iso9660_t * p_iso)
{
  if (!p_iso) return 0;
  return yep == p_iso->b_xa;
}
