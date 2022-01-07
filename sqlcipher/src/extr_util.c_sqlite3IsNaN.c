
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isnan (double) ;
 int testcase (int) ;

int sqlite3IsNaN(double x){
  int rc;
  volatile double y = x;
  volatile double z = y;
  rc = (y!=z);



  testcase( rc );
  return rc;
}
