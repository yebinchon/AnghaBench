
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_mtime; } ;


 scalar_t__ stat (char const*,struct stat*) ;

time_t
stat_mtime(const char *path)
{
 struct stat info;

 if (stat(path, &info) < 0)
  return 0;

 return info.st_mtime;
}
