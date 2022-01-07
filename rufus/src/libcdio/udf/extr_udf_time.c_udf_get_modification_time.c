
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int modification_time; } ;
struct TYPE_5__ {TYPE_1__ fe; } ;
typedef TYPE_2__ udf_dirent_t ;
typedef int time_t ;


 int udf_stamp_to_time (int *,long*,int ) ;

time_t
udf_get_modification_time(const udf_dirent_t *p_udf_dirent)
{
  if (p_udf_dirent) {
    time_t ret_time;
    long int usec;
    udf_stamp_to_time(&ret_time, &usec, p_udf_dirent->fe.modification_time);
    return ret_time;
  }
  return 0;
}
