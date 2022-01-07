
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_mtime; int st_atime; } ;


 int err (int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

void
stime_file(char *fname, time_t *tvp)
{
 struct stat sb;

 if (stat(fname, &sb))
  err(1, "%s", fname);
 tvp[0] = sb.st_atime;
 tvp[1] = sb.st_mtime;
}
