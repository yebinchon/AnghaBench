
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int adns_state ;


 int adns__diag (int ,int,int ,char*,int ) ;
 int adns_globalsystemfailure (int ) ;
 int errno ;
 int gettimeofday (struct timeval*,int ) ;
 int strerror (int ) ;

void adns__must_gettimeofday(adns_state ads, const struct timeval **now_io,
        struct timeval *tv_buf) {
  const struct timeval *now;
  int r;

  now= *now_io;
  if (now) return;
  r= gettimeofday(tv_buf,0); if (!r) { *now_io= tv_buf; return; }
  adns__diag(ads,-1,0,"gettimeofday failed: %s",strerror(errno));
  adns_globalsystemfailure(ads);
  return;
}
