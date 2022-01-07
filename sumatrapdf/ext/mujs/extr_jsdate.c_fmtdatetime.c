
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fmtdate (char*,double) ;
 int fmttime (char*,double,double) ;
 int isfinite (double) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static char *fmtdatetime(char *buf, double t, double tza)
{
 char dbuf[20], tbuf[20];
 if (!isfinite(t))
  return "Invalid Date";
 fmtdate(dbuf, t);
 fmttime(tbuf, t, tza);
 sprintf(buf, "%sT%s", dbuf, tbuf);
 return buf;
}
