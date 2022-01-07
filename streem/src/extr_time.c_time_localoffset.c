
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int difftime (int ,int ) ;
 int gmtime_r (int *,struct tm*) ;
 int mktime (struct tm*) ;
 int time (int *) ;

__attribute__((used)) static int
time_localoffset(int force)
{
  static int localoffset = 1;

  if (force || localoffset == 1) {
    time_t now;
    struct tm gm;

    now = time(((void*)0));
    gmtime_r(&now, &gm);
    localoffset = difftime(now, mktime(&gm));
  }
  return localoffset;
}
