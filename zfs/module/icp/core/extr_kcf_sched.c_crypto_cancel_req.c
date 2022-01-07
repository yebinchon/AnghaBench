
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int rt_lock; TYPE_3__** rt_idhash; } ;
typedef TYPE_1__ kcf_reqid_table_t ;
struct TYPE_13__ {int pd_prov_type; } ;
typedef TYPE_2__ kcf_provider_desc_t ;
typedef int kcf_context_t ;
struct TYPE_14__ {int an_done; int an_lock; int * an_context; int an_state; TYPE_2__* an_provider; struct TYPE_14__* an_idnext; } ;
typedef TYPE_3__ kcf_areq_node_t ;
typedef size_t crypto_req_id_t ;
struct TYPE_15__ {int gs_lock; } ;


 int ASSERT (int ) ;


 size_t GET_REQID (TYPE_3__*) ;
 int KCF_AREQ_REFHOLD (TYPE_3__*) ;
 int KCF_AREQ_REFRELE (TYPE_3__*) ;
 int REQID_HASH (size_t) ;
 size_t REQID_TABLE_MASK ;
 int REQ_WAITING ;
 int cv_wait (int *,int *) ;
 TYPE_8__* gswq ;
 int kcf_remove_node (TYPE_3__*) ;
 int kcf_removereq_in_ctxchain (int *,TYPE_3__*) ;
 int kcf_reqid_delete (TYPE_3__*) ;
 TYPE_1__** kcf_reqid_table ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
crypto_cancel_req(crypto_req_id_t id)
{
 int indx;
 kcf_areq_node_t *areq;
 kcf_provider_desc_t *pd;
 kcf_context_t *ictx;
 kcf_reqid_table_t *rt;

 rt = kcf_reqid_table[id & REQID_TABLE_MASK];
 indx = REQID_HASH(id);

 mutex_enter(&rt->rt_lock);
 for (areq = rt->rt_idhash[indx]; areq; areq = areq->an_idnext) {
 if (GET_REQID(areq) == id) {




  pd = areq->an_provider;
  ASSERT(pd != ((void*)0));

  switch (pd->pd_prov_type) {
  case 128:
   mutex_enter(&gswq->gs_lock);
   mutex_enter(&areq->an_lock);


   if (areq->an_state <= REQ_WAITING) {

    kcf_remove_node(areq);
    if ((ictx = areq->an_context) != ((void*)0))
     kcf_removereq_in_ctxchain(ictx, areq);

    mutex_exit(&areq->an_lock);
    mutex_exit(&gswq->gs_lock);
    mutex_exit(&rt->rt_lock);


    kcf_reqid_delete(areq);
    KCF_AREQ_REFRELE(areq);
    return;
   }

   mutex_exit(&areq->an_lock);
   mutex_exit(&gswq->gs_lock);
   break;

  case 129:





   break;
  default:
   break;
  }





  KCF_AREQ_REFHOLD(areq);
  while (GET_REQID(areq) == id)
   cv_wait(&areq->an_done, &rt->rt_lock);
  KCF_AREQ_REFRELE(areq);
  break;
 }
 }

 mutex_exit(&rt->rt_lock);
}
