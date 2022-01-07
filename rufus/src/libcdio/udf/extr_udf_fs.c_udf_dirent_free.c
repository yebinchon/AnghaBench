
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* sector; struct TYPE_4__* psz_name; int * fid; } ;
typedef TYPE_1__ udf_dirent_t ;


 int free_and_null (TYPE_1__*) ;

bool
udf_dirent_free(udf_dirent_t *p_udf_dirent)
{
  if (p_udf_dirent) {
    p_udf_dirent->fid = ((void*)0);
    free_and_null(p_udf_dirent->psz_name);
    free_and_null(p_udf_dirent->sector);
    free_and_null(p_udf_dirent);
  }
  return 1;
}
