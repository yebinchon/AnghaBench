
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int udf_file_entry_t ;
struct TYPE_3__ {int fe; } ;
typedef TYPE_1__ udf_dirent_t ;


 int memcpy (int *,int *,int) ;

bool
udf_get_file_entry(const udf_dirent_t *p_udf_dirent,
             udf_file_entry_t *p_udf_fe)
{
  if (!p_udf_dirent) return 0;
  memcpy(p_udf_fe, &p_udf_dirent->fe, sizeof(udf_file_entry_t));
  return 1;
}
