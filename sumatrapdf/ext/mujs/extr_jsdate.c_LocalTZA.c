
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int gmtime (int*) ;
 int localtime (int*) ;
 int mktime (int ) ;
 int time (int *) ;

__attribute__((used)) static double LocalTZA(void)
{
 static int once = 1;
 static double tza = 0;
 if (once) {
  time_t now = time(((void*)0));
  time_t utc = mktime(gmtime(&now));
  time_t loc = mktime(localtime(&now));
  tza = (loc - utc) * 1000;
  once = 0;
 }
 return tza;
}
