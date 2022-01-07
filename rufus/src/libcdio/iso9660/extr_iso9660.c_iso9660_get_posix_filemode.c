
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_5__ {int attributes; } ;
struct TYPE_7__ {scalar_t__ b3_rock; } ;
struct TYPE_6__ {TYPE_1__ xa; scalar_t__ b_xa; TYPE_3__ rr; } ;
typedef TYPE_2__ iso9660_stat_t ;


 int iso9660_get_posix_filemode_from_rock (TYPE_3__*) ;
 int iso9660_get_posix_filemode_from_xa (int ) ;
 scalar_t__ yep ;

mode_t
iso9660_get_posix_filemode(const iso9660_stat_t *p_iso_dirent)
{
  mode_t mode = 0;






  if (p_iso_dirent->b_xa) {
    return iso9660_get_posix_filemode_from_xa(p_iso_dirent->xa.attributes);
  }
  return mode;
}
