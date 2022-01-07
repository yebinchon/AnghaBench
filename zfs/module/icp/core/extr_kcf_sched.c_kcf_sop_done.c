
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sn_rv; int sn_lock; int sn_cv; int sn_state; } ;
typedef TYPE_1__ kcf_sreq_node_t ;


 int REQ_DONE ;
 int cv_signal (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
kcf_sop_done(kcf_sreq_node_t *sreq, int error)
{
 mutex_enter(&sreq->sn_lock);
 sreq->sn_state = REQ_DONE;
 sreq->sn_rv = error;
 cv_signal(&sreq->sn_cv);
 mutex_exit(&sreq->sn_lock);
}
