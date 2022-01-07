
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_ctime; int st_atime; int st_mtime; } ;


 scalar_t__ MIN (scalar_t__,int ) ;

__attribute__((used)) static time_t
get_create_time(struct stat *st)
{
 time_t ret, ret1;

 ret = MIN(st->st_ctime, st->st_mtime);
 ret1 = MIN(ret, st->st_atime);

 if (ret1 != (time_t) 0)
  return ret1;

 return ret;
}
