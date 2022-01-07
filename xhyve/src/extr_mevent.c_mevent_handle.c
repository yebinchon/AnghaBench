
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mevent {int me_param; int me_type; int me_fd; int (* me_func ) (int ,int ,int ) ;} ;
struct kevent {struct mevent* udata; } ;


 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void
mevent_handle(struct kevent *kev, int numev)
{
 struct mevent *mevp;
 int i;

 for (i = 0; i < numev; i++) {
  mevp = kev[i].udata;



  (*mevp->me_func)(mevp->me_fd, mevp->me_type, mevp->me_param);
 }
}
