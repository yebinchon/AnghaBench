
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

__attribute__((used)) static void setstoptime_x(
  Error *pErr,
  int nMs
){
  if( pErr->rc==SQLITE_OK ){
    double t = currentTime();
    timelimit = t + ((double)nMs)/(1000.0*60.0*60.0*24.0);
  }
}
