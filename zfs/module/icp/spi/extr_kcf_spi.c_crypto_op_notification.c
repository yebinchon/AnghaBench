
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_6__* sn_provider; } ;
typedef TYPE_2__ kcf_sreq_node_t ;
typedef scalar_t__ kcf_call_type_t ;
struct TYPE_9__ {TYPE_6__* an_provider; } ;
typedef TYPE_3__ kcf_areq_node_t ;
typedef int * crypto_req_handle_t ;
struct TYPE_7__ {int ks_nfails; } ;
struct TYPE_10__ {TYPE_1__ pd_sched_info; } ;


 int ASSERT (int) ;
 scalar_t__ CRYPTO_ASYNCH ;
 int CRYPTO_SUCCESS ;
 scalar_t__ CRYPTO_SYNCH ;
 scalar_t__ GET_REQ_TYPE (int *) ;
 int KCF_PROV_IREFRELE (TYPE_6__*) ;
 int kcf_aop_done (TYPE_3__*,int) ;
 int kcf_sop_done (TYPE_2__*,int) ;

void
crypto_op_notification(crypto_req_handle_t handle, int error)
{
 kcf_call_type_t ctype;

 if (handle == ((void*)0))
  return;

 if ((ctype = GET_REQ_TYPE(handle)) == CRYPTO_SYNCH) {
  kcf_sreq_node_t *sreq = (kcf_sreq_node_t *)handle;

  if (error != CRYPTO_SUCCESS)
   sreq->sn_provider->pd_sched_info.ks_nfails++;
  KCF_PROV_IREFRELE(sreq->sn_provider);
  kcf_sop_done(sreq, error);
 } else {
  kcf_areq_node_t *areq = (kcf_areq_node_t *)handle;

  ASSERT(ctype == CRYPTO_ASYNCH);
  if (error != CRYPTO_SUCCESS)
   areq->an_provider->pd_sched_info.ks_nfails++;
  KCF_PROV_IREFRELE(areq->an_provider);
  kcf_aop_done(areq, error);
 }
}
