
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int sqlite3_uint64 ;


 int gettimeofday (struct timeval*,int ) ;

__attribute__((used)) static sqlite3_uint64 vfslog_time(){
  struct timeval sTime;
  gettimeofday(&sTime, 0);
  return sTime.tv_usec + (sqlite3_uint64)sTime.tv_sec * 1000000;
}
