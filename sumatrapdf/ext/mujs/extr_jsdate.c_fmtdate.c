
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DateFromTime (double) ;
 int MonthFromTime (double) ;
 int YearFromTime (double) ;
 int isfinite (double) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static char *fmtdate(char *buf, double t)
{
 int y = YearFromTime(t);
 int m = MonthFromTime(t);
 int d = DateFromTime(t);
 if (!isfinite(t))
  return "Invalid Date";
 sprintf(buf, "%04d-%02d-%02d", y, m+1, d);
 return buf;
}
