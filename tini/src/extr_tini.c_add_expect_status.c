
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT32_BITFIELD_CHECK_BOUNDS (int ,long) ;
 int INT32_BITFIELD_SET (int ,long) ;
 long STATUS_MAX ;
 long STATUS_MIN ;
 int expect_status ;
 long strtol (char*,char**,int) ;

int add_expect_status(char* arg) {
 long status = 0;
 char* endptr = ((void*)0);
 status = strtol(arg, &endptr, 10);

 if ((endptr == ((void*)0)) || (*endptr != 0)) {
  return 1;
 }

 if ((status < STATUS_MIN) || (status > STATUS_MAX)) {
  return 1;
 }

 INT32_BITFIELD_CHECK_BOUNDS(expect_status, status);
 INT32_BITFIELD_SET(expect_status, status);
 return 0;
}
