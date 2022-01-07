
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int root_directory_record; } ;
struct TYPE_5__ {int root_directory_record; } ;
struct TYPE_7__ {int u_joliet_level; int b_xa; TYPE_2__ pvd; TYPE_1__ svd; } ;
typedef TYPE_3__ iso9660_t ;
typedef int iso9660_stat_t ;
typedef int iso9660_dir_t ;


 int * _iso9660_dir_to_statbuf (int *,int *,int ,int ) ;

__attribute__((used)) static iso9660_stat_t *
_ifs_stat_root (iso9660_t *p_iso)
{
  iso9660_stat_t *p_stat;
  iso9660_dir_t *p_iso9660_dir;






  p_iso9660_dir = &(p_iso->pvd.root_directory_record) ;


  p_stat = _iso9660_dir_to_statbuf (p_iso9660_dir, ((void*)0),
        p_iso->b_xa,
        p_iso->u_joliet_level);
  return p_stat;
}
