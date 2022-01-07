
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ dop_ciphertext; } ;
struct TYPE_14__ {scalar_t__ mo_data; } ;
struct TYPE_12__ {TYPE_5__ decrypt_params; TYPE_3__ mac_params; } ;
struct TYPE_13__ {int rp_opgrp; TYPE_1__ rp_u; } ;
typedef TYPE_2__ kcf_req_params_t ;
typedef TYPE_3__ kcf_mac_ops_params_t ;
struct TYPE_19__ {int cr_callback_arg; int (* cr_callback_func ) (int ,int) ;} ;
struct TYPE_15__ {TYPE_8__ kr_callreq; int kr_savelen; int kr_saveoffset; TYPE_6__* kr_areq; TYPE_2__ kr_params; } ;
typedef TYPE_4__ kcf_dual_req_t ;
typedef TYPE_5__ kcf_decrypt_ops_params_t ;
struct TYPE_17__ {int an_isdual; TYPE_8__ an_reqarg; } ;
typedef TYPE_6__ kcf_areq_node_t ;
struct TYPE_18__ {int dd_len1; int dd_offset1; } ;
typedef TYPE_7__ crypto_dual_data_t ;
typedef TYPE_8__ crypto_call_req_t ;


 int B_FALSE ;
 int KCF_AREQ_REFRELE (TYPE_6__*) ;


 int kcf_aop_done (TYPE_6__*,int) ;
 int kmem_free (TYPE_4__*,int) ;
 int panic (char*,int) ;
 int stub1 (int ,int) ;

void
kcf_last_req(void *last_req_arg, int status)
{
 kcf_dual_req_t *last_req = (kcf_dual_req_t *)last_req_arg;

 kcf_req_params_t *params = &(last_req->kr_params);
 kcf_areq_node_t *areq = last_req->kr_areq;
 crypto_dual_data_t *ct = ((void*)0);

 switch (params->rp_opgrp) {
 case 128: {
  kcf_mac_ops_params_t *mops = &(params->rp_u.mac_params);

  ct = (crypto_dual_data_t *)mops->mo_data;
  break;
 }
 case 129: {
  kcf_decrypt_ops_params_t *dcrops =
      &(params->rp_u.decrypt_params);

  ct = (crypto_dual_data_t *)dcrops->dop_ciphertext;
  break;
 }
 default: {
  panic("invalid kcf_op_group_t %d", (int)params->rp_opgrp);
  return;
 }
 }
 ct->dd_offset1 = last_req->kr_saveoffset;
 ct->dd_len1 = last_req->kr_savelen;



 if (areq == ((void*)0)) {
  crypto_call_req_t *cr = &last_req->kr_callreq;

  (*(cr->cr_callback_func))(cr->cr_callback_arg, status);
  kmem_free(last_req, sizeof (kcf_dual_req_t));
  return;
 }
 areq->an_reqarg = last_req->kr_callreq;
 KCF_AREQ_REFRELE(areq);
 kmem_free(last_req, sizeof (kcf_dual_req_t));
 areq->an_isdual = B_FALSE;
 kcf_aop_done(areq, status);
}
