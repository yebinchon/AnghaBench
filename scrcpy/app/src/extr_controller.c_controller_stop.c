
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int stopped; int mutex; int msg_cond; } ;


 int cond_signal (int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

void
controller_stop(struct controller *controller) {
    mutex_lock(controller->mutex);
    controller->stopped = 1;
    cond_signal(controller->msg_cond);
    mutex_unlock(controller->mutex);
}
