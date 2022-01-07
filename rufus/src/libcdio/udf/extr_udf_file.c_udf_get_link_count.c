
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int link_count; } ;
struct TYPE_5__ {TYPE_1__ fe; } ;
typedef TYPE_2__ udf_dirent_t ;


 int uint16_from_le (int ) ;

uint16_t udf_get_link_count(const udf_dirent_t *p_udf_dirent)
{
  if (p_udf_dirent) {
    return uint16_from_le(p_udf_dirent->fe.link_count);
  }
  return 0;
}
