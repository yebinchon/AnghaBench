
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mevent {int me_state; int me_cq; } ;


 int EINVAL ;
 int LIST_INSERT_HEAD (int *,struct mevent*,int ) ;
 int LIST_REMOVE (struct mevent*,int ) ;
 int MEV_DEL_PENDING ;
 int change_head ;
 int me_list ;
 int mevent_notify () ;
 int mevent_qlock () ;
 int mevent_qunlock () ;

__attribute__((used)) static int
mevent_update(struct mevent *evp, int newstate)
{



 if (evp->me_state == MEV_DEL_PENDING)
  return (EINVAL);




 if (evp->me_state == newstate)
  return (0);

 mevent_qlock();

 evp->me_state = newstate;




 if (evp->me_cq == 0) {
  evp->me_cq = 1;
  LIST_REMOVE(evp, me_list);
  LIST_INSERT_HEAD(&change_head, evp, me_list);
  mevent_notify();
 }

 mevent_qunlock();

 return (0);
}
