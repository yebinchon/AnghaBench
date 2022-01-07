
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rc; } ;
typedef TYPE_1__ Error ;


 scalar_t__ SQLITE_OK ;
 double currentTime () ;
 double timelimit ;

__attribute__((used)) static int timetostop_x(
  Error *pErr
){
  int ret = 1;
  if( pErr->rc==SQLITE_OK ){
    double t = currentTime();
    ret = (t >= timelimit);
  }
  return ret;
}
