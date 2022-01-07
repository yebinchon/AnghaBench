
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mevent {int me_state; } ;


 int EV_ADD ;
 int EV_DELETE ;
 int EV_DISABLE ;
 int EV_ENABLE ;




 int assert (int ) ;

__attribute__((used)) static int
mevent_kq_flags(struct mevent *mevp)
{
 int ret;

 switch (mevp->me_state) {
 case 131:
  ret = EV_ADD;
  break;
 case 128:
  ret = EV_ENABLE;
  break;
 case 129:
  ret = EV_DISABLE;
  break;
 case 130:
  ret = EV_DELETE;
  break;
 default:
  assert(0);
  break;
 }

 return (ret);
}
