
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* psz_name; } ;
typedef TYPE_1__ udf_dirent_t ;



const char *
udf_get_filename(const udf_dirent_t *p_udf_dirent)
{
  if (!p_udf_dirent) return ((void*)0);
  if (!p_udf_dirent->psz_name) return "..";
  return p_udf_dirent->psz_name;
}
