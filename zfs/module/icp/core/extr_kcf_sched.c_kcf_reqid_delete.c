
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rt_lock; TYPE_2__** rt_idhash; } ;
typedef TYPE_1__ kcf_reqid_table_t ;
struct TYPE_8__ {int an_done; struct TYPE_8__* an_idnext; struct TYPE_8__* an_idprev; } ;
typedef TYPE_2__ kcf_areq_node_t ;
typedef size_t crypto_req_id_t ;


 size_t GET_REQID (TYPE_2__*) ;
 int REQID_HASH (size_t) ;
 size_t REQID_TABLE_MASK ;
 int SET_REQID (TYPE_2__*,int ) ;
 int cv_broadcast (int *) ;
 TYPE_1__** kcf_reqid_table ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
kcf_reqid_delete(kcf_areq_node_t *areq)
{
 int indx;
 kcf_areq_node_t *nextp, *prevp;
 crypto_req_id_t id = GET_REQID(areq);
 kcf_reqid_table_t *rt;

 rt = kcf_reqid_table[id & REQID_TABLE_MASK];
 indx = REQID_HASH(id);

 mutex_enter(&rt->rt_lock);

 nextp = areq->an_idnext;
 prevp = areq->an_idprev;
 if (nextp != ((void*)0))
  nextp->an_idprev = prevp;
 if (prevp != ((void*)0))
  prevp->an_idnext = nextp;
 else
  rt->rt_idhash[indx] = nextp;

 SET_REQID(areq, 0);
 cv_broadcast(&areq->an_done);

 mutex_exit(&rt->rt_lock);
}
