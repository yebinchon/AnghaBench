
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rt_curid; int rt_lock; TYPE_2__** rt_idhash; } ;
typedef TYPE_1__ kcf_reqid_table_t ;
struct TYPE_7__ {struct TYPE_7__* an_idprev; struct TYPE_7__* an_idnext; } ;
typedef TYPE_2__ kcf_areq_node_t ;
typedef int crypto_req_id_t ;


 size_t CPU_SEQID ;
 int REQID_COUNTER_HIGH ;
 int REQID_COUNTER_LOW ;
 int REQID_HASH (int) ;
 size_t REQID_TABLE_MASK ;
 int SET_REQID (TYPE_2__*,int) ;
 TYPE_1__** kcf_reqid_table ;
 int kpreempt_disable () ;
 int kpreempt_enable () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static crypto_req_id_t
kcf_reqid_insert(kcf_areq_node_t *areq)
{
 int indx;
 crypto_req_id_t id;
 kcf_areq_node_t *headp;
 kcf_reqid_table_t *rt;

 kpreempt_disable();
 rt = kcf_reqid_table[CPU_SEQID & REQID_TABLE_MASK];
 kpreempt_enable();

 mutex_enter(&rt->rt_lock);

 rt->rt_curid = id =
     (rt->rt_curid - REQID_COUNTER_LOW) | REQID_COUNTER_HIGH;
 SET_REQID(areq, id);
 indx = REQID_HASH(id);
 headp = areq->an_idnext = rt->rt_idhash[indx];
 areq->an_idprev = ((void*)0);
 if (headp != ((void*)0))
  headp->an_idprev = areq;

 rt->rt_idhash[indx] = areq;
 mutex_exit(&rt->rt_lock);

 return (id);
}
