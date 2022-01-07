
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
typedef int dstr ;


 int Strncat (char*,char*,size_t) ;
 int Strncpy (char*,char const* const,size_t) ;
 scalar_t__ getpid () ;
 struct tm* localtime (scalar_t__*) ;
 int sprintf (char*,char*,int,unsigned int,int,char*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (scalar_t__*) ;

void
SpoolName(const char *const sdir, char *sp, size_t size, int flag, int serial, time_t when)
{
 char sname[64];
 char dstr[32];
 struct tm *ltp;

 if ((when == (time_t) 0) || (when == (time_t) -1))
  (void) time(&when);
 ltp = localtime(&when);
 if (ltp == ((void*)0)) {

  (void) Strncpy(dstr, "19700101-000000", size);
 } else {
  (void) strftime(dstr, sizeof(dstr), "%Y%m%d-%H%M%S", ltp);
 }
 (void) Strncpy(sp, sdir, size);
 (void) sprintf(sname, "/%c-%010u-%04x-%s",
  flag,
  (unsigned int) getpid(),
  (serial % (16 * 16 * 16 * 16)),
  dstr
 );
 (void) Strncat(sp, sname, size);
}
