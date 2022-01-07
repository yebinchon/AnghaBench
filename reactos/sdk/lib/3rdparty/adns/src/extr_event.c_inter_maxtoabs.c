
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct TYPE_3__ {int quot; } ;
typedef TYPE_1__ ldiv_t ;


 int inter_maxto (struct timeval**,struct timeval*,struct timeval) ;
 TYPE_1__ ldiv (int,int) ;
 int timerclear (struct timeval*) ;

__attribute__((used)) static void inter_maxtoabs(struct timeval **tv_io, struct timeval *tvbuf,
      struct timeval now, struct timeval maxtime) {

  ldiv_t dr;



  if (!tv_io) return;
  maxtime.tv_sec -= (now.tv_sec+2);
  maxtime.tv_usec -= (now.tv_usec-2000000);
  dr= ldiv(maxtime.tv_usec,1000000);
  maxtime.tv_sec += dr.quot;
  maxtime.tv_usec -= dr.quot*1000000;
  if (maxtime.tv_sec<0) timerclear(&maxtime);
  inter_maxto(tv_io,tvbuf,maxtime);
}
