
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ psz_symlink; } ;
struct TYPE_6__ {TYPE_1__ rr; } ;
typedef TYPE_2__ iso9660_stat_t ;


 int CDIO_FREE_IF_NOT_NULL (scalar_t__) ;
 int free (TYPE_2__*) ;

void
iso9660_stat_free(iso9660_stat_t *p_stat)
{
  if (p_stat != ((void*)0)) {
    if (p_stat->rr.psz_symlink) {
      CDIO_FREE_IF_NOT_NULL(p_stat->rr.psz_symlink);
    }
    free(p_stat);
  }
}
