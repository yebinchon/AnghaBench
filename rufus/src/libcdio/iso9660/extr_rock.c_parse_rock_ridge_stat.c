
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s_rock_offset; scalar_t__ b3_rock; } ;
struct TYPE_6__ {TYPE_1__ rr; } ;
typedef TYPE_2__ iso9660_stat_t ;
typedef int iso9660_dir_t ;


 scalar_t__ nope ;
 int parse_rock_ridge_stat_internal (int *,TYPE_2__*,int) ;

int
parse_rock_ridge_stat(iso9660_dir_t *p_iso9660_dir,
                iso9660_stat_t *p_stat)
{
  int result;

  if (!p_stat) return 0;

  result = parse_rock_ridge_stat_internal(p_iso9660_dir, p_stat, 0);


  if (0xFF == p_stat->rr.s_rock_offset && nope != p_stat->rr.b3_rock) {
    result = parse_rock_ridge_stat_internal(p_iso9660_dir, p_stat, 14);
  }
  return result;
}
