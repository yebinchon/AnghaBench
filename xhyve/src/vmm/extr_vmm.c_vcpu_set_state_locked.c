
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu {int state; int state_sleep_cnd; int state_sleep_mtx; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;


 int EBUSY ;
 int KASSERT (int,char*) ;




 int pthread_cond_broadcast (int *) ;
 int pthread_cond_timedwait_relative_np (int *,int *,struct timespec const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vcpu_lock (struct vcpu*) ;
 int vcpu_unlock (struct vcpu*) ;

__attribute__((used)) static int
vcpu_set_state_locked(struct vcpu *vcpu, enum vcpu_state newstate,
    bool from_idle)
{
 int error;
 const struct timespec ts = {.tv_sec = 1, .tv_nsec = 0};






 if (from_idle) {
  while (vcpu->state != 130) {
   pthread_mutex_lock(&vcpu->state_sleep_mtx);
   vcpu_unlock(vcpu);
   pthread_cond_timedwait_relative_np(&vcpu->state_sleep_cnd,
    &vcpu->state_sleep_mtx, &ts);
   vcpu_lock(vcpu);
   pthread_mutex_unlock(&vcpu->state_sleep_mtx);

  }
 } else {
  KASSERT(vcpu->state != 130, ("invalid transition from "
      "vcpu idle state"));
 }







 switch (vcpu->state) {
 case 130:
 case 129:
 case 128:
  error = (newstate != 131);
  break;
 case 131:
  error = (newstate == 131);
  break;
 }

 if (error)
  return (EBUSY);

 vcpu->state = newstate;

 if (newstate == 130)
  pthread_cond_broadcast(&vcpu->state_sleep_cnd);


 return (0);
}
