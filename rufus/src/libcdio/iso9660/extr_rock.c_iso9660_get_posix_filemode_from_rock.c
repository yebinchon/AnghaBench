
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_3__ {int st_mode; } ;
typedef TYPE_1__ iso_rock_statbuf_t ;



mode_t
iso9660_get_posix_filemode_from_rock(const iso_rock_statbuf_t *rr)
{
  return (mode_t) rr->st_mode;
}
