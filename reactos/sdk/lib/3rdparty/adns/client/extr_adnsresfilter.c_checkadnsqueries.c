
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treething {scalar_t__ qu; int * ans; } ;
typedef scalar_t__ adns_query ;
typedef int adns_answer ;


 int EAGAIN ;
 int ESRCH ;
 int adns_check (int ,scalar_t__*,int **,void**) ;
 int ads ;
 int assert (int) ;

__attribute__((used)) static void checkadnsqueries(void) {
  adns_query qu;
  adns_answer *ans;
  void *context;
  struct treething *foundthing;
  int r;

  for (;;) {
    qu= 0; context= 0; ans= 0;
    r= adns_check(ads,&qu,&ans,&context);
    if (r == ESRCH || r == EAGAIN) break;
    assert(!r);
    foundthing= context;
    foundthing->ans= ans;
    foundthing->qu= 0;
  }
}
