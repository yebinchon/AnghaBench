
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int fz_context ;


 int fz_strlcpy (char*,char*,int) ;
 struct tm* gmtime (int *) ;
 struct tm* gmtime_r (int *,struct tm*) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static void
pdf_format_date(fz_context *ctx, char *s, int n, time_t secs)
{



 struct tm *tm = gmtime(&secs);

 if (!tm)
  fz_strlcpy(s, "D:19700101000000Z", n);
 else
  strftime(s, n, "D:%Y%m%d%H%M%SZ", tm);
}
