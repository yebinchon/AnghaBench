
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double kGigabyte ;
 double kKilobyte ;
 double kMegabyte ;
 double kTerabyte ;

double
FileSize(const double size, const char **uStr0, double *const uMult0)
{
 double uMult, uTotal;
 const char *uStr;






 if (size > (999.5 * kGigabyte)) {
  uStr = "TB";
  uMult = kTerabyte;
 } else if (size > (999.5 * kMegabyte)) {
  uStr = "GB";
  uMult = kGigabyte;
 } else if (size > (999.5 * kKilobyte)) {
  uStr = "MB";
  uMult = kMegabyte;
 } else if (size > 999.5) {
  uStr = "kB";
  uMult = 1024;
 } else {
  uStr = "B";
  uMult = 1;
 }
 if (uStr0 != ((void*)0))
  *uStr0 = uStr;
 if (uMult0 != ((void*)0))
  *uMult0 = uMult;
 uTotal = size / ((double) uMult);
 if (uTotal < 0.0)
  uTotal = 0.0;
 return (uTotal);
}
