
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef long uint64_t ;
struct TYPE_4__ {int info_len; } ;
struct TYPE_5__ {TYPE_1__ fe; } ;
typedef TYPE_2__ udf_dirent_t ;


 long uint64_from_le (int ) ;

uint64_t udf_get_file_length(const udf_dirent_t *p_udf_dirent)
{
  if (p_udf_dirent) {
    return uint64_from_le(p_udf_dirent->fe.info_len);
  }
  return 2147483647L;
}
