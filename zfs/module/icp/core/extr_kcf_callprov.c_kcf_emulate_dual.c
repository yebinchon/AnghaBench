
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef void* off_t ;
struct TYPE_29__ {int * md_mac; int * md_plaintext; TYPE_7__* md_ciphertext; int md_decr_templ; int md_decr_key; int md_decr_mech; int md_mac_templ; int md_mac_key; int md_mac_mech; } ;
struct TYPE_30__ {int * em_mac; TYPE_7__* em_ciphertext; int * em_plaintext; int em_mac_templ; int em_mac_key; int em_mac_mech; int * em_encr_templ; int * em_encr_key; int em_encr_mech; } ;
struct TYPE_26__ {TYPE_4__ mac_decrypt_params; TYPE_5__ encrypt_mac_params; } ;
struct TYPE_27__ {int rp_opgrp; TYPE_1__ rp_u; int rp_optype; } ;
typedef TYPE_2__ kcf_req_params_t ;
struct TYPE_28__ {int pd_sid; } ;
typedef TYPE_3__ kcf_provider_desc_t ;
typedef int kcf_op_type_t ;
typedef TYPE_4__ kcf_mac_decrypt_ops_params_t ;
typedef TYPE_5__ kcf_encrypt_mac_ops_params_t ;
struct TYPE_33__ {scalar_t__ cc_framework_private; } ;
struct TYPE_31__ {TYPE_8__ kc_glbl_ctx; struct TYPE_31__* kc_secondctx; } ;
typedef TYPE_6__ kcf_context_t ;
struct TYPE_32__ {size_t dd_len1; size_t dd_len2; void* dd_offset1; void* dd_offset2; } ;
typedef TYPE_7__ crypto_dual_data_t ;
typedef int crypto_data_t ;
typedef TYPE_8__ crypto_ctx_t ;
typedef TYPE_8__* crypto_context_t ;


 int B_FALSE ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_SUCCESS ;
 int KCF_CONTEXT_REFHOLD (TYPE_6__*) ;





 int KCF_PROV_INCRSTATS (TYPE_3__*,int) ;
 int KCF_WRAP_DECRYPT_OPS_PARAMS (TYPE_2__*,int const,int ,int *,int ,int *,int *,int ) ;
 int KCF_WRAP_ENCRYPT_OPS_PARAMS (TYPE_2__*,int const,int ,int *,int *,int *,int *,int *) ;
 int crypto_cancel_ctx (TYPE_8__*) ;
 int crypto_decrypt_final (TYPE_8__*,int *,int *) ;
 int crypto_decrypt_update (TYPE_8__*,int *,int *,int *) ;
 int crypto_mac_final (TYPE_8__*,int *,int *) ;
 int crypto_mac_init (int *,int ,int ,TYPE_8__**,int *) ;
 int crypto_mac_update (TYPE_8__*,int *,int *) ;
 int kcf_submit_request (TYPE_3__*,TYPE_8__*,int *,TYPE_2__*,int ) ;

__attribute__((used)) static int
kcf_emulate_dual(kcf_provider_desc_t *pd, crypto_ctx_t *ctx,
    kcf_req_params_t *params)
{
 int err = CRYPTO_ARGUMENTS_BAD;
 kcf_op_type_t optype;
 size_t save_len;
 off_t save_offset;

 optype = params->rp_optype;

 switch (params->rp_opgrp) {
 case 132: {
  kcf_encrypt_mac_ops_params_t *cmops =
      &params->rp_u.encrypt_mac_params;
  kcf_context_t *encr_kcf_ctx;
  crypto_ctx_t *mac_ctx;
  kcf_req_params_t encr_params;

  encr_kcf_ctx = (kcf_context_t *)(ctx->cc_framework_private);

  switch (optype) {
  case 129: {
   encr_kcf_ctx->kc_secondctx = ((void*)0);

   KCF_WRAP_ENCRYPT_OPS_PARAMS(&encr_params, 129,
       pd->pd_sid, &cmops->em_encr_mech,
       cmops->em_encr_key, ((void*)0), ((void*)0),
       cmops->em_encr_templ);

   err = kcf_submit_request(pd, ctx, ((void*)0), &encr_params,
       B_FALSE);


   if (err != CRYPTO_SUCCESS) {
    break;
   }

   err = crypto_mac_init(&cmops->em_mac_mech,
       cmops->em_mac_key, cmops->em_mac_templ,
       (crypto_context_t *)&mac_ctx, ((void*)0));

   if (err == CRYPTO_SUCCESS) {
    encr_kcf_ctx->kc_secondctx = (kcf_context_t *)
        mac_ctx->cc_framework_private;
    KCF_CONTEXT_REFHOLD((kcf_context_t *)
        mac_ctx->cc_framework_private);
   }

   break;

  }
  case 128: {
   crypto_dual_data_t *ct = cmops->em_ciphertext;
   crypto_data_t *pt = cmops->em_plaintext;
   kcf_context_t *mac_kcf_ctx = encr_kcf_ctx->kc_secondctx;
   crypto_ctx_t *mac_ctx = &mac_kcf_ctx->kc_glbl_ctx;

   KCF_WRAP_ENCRYPT_OPS_PARAMS(&encr_params, 128,
       pd->pd_sid, ((void*)0), ((void*)0), pt, (crypto_data_t *)ct,
       ((void*)0));

   err = kcf_submit_request(pd, ctx, ((void*)0), &encr_params,
       B_FALSE);


   if (err != CRYPTO_SUCCESS) {
    break;
   }

   save_offset = ct->dd_offset1;
   save_len = ct->dd_len1;
   if (ct->dd_len2 == 0) {





    if (ct->dd_len1 == 0)
     break;

   } else {
    ct->dd_offset1 = ct->dd_offset2;
    ct->dd_len1 = ct->dd_len2;
   }
   err = crypto_mac_update((crypto_context_t)mac_ctx,
       (crypto_data_t *)ct, ((void*)0));

   ct->dd_offset1 = save_offset;
   ct->dd_len1 = save_len;

   break;
  }
  case 130: {
   crypto_dual_data_t *ct = cmops->em_ciphertext;
   crypto_data_t *mac = cmops->em_mac;
   kcf_context_t *mac_kcf_ctx = encr_kcf_ctx->kc_secondctx;
   crypto_ctx_t *mac_ctx = &mac_kcf_ctx->kc_glbl_ctx;
   crypto_context_t mac_context = mac_ctx;

   KCF_WRAP_ENCRYPT_OPS_PARAMS(&encr_params, 130,
       pd->pd_sid, ((void*)0), ((void*)0), ((void*)0), (crypto_data_t *)ct,
       ((void*)0));

   err = kcf_submit_request(pd, ctx, ((void*)0), &encr_params,
       B_FALSE);


   if (err != CRYPTO_SUCCESS) {
    crypto_cancel_ctx(mac_context);
    break;
   }

   if (ct->dd_len2 > 0) {
    save_offset = ct->dd_offset1;
    save_len = ct->dd_len1;
    ct->dd_offset1 = ct->dd_offset2;
    ct->dd_len1 = ct->dd_len2;

    err = crypto_mac_update(mac_context,
        (crypto_data_t *)ct, ((void*)0));

    ct->dd_offset1 = save_offset;
    ct->dd_len1 = save_len;

    if (err != CRYPTO_SUCCESS) {
     crypto_cancel_ctx(mac_context);
     return (err);
    }
   }


   err = crypto_mac_final(mac_context, mac, ((void*)0));
   break;
  }

  default:
   break;
  }
  KCF_PROV_INCRSTATS(pd, err);
  break;
 }
 case 131: {
  kcf_mac_decrypt_ops_params_t *mdops =
      &params->rp_u.mac_decrypt_params;
  kcf_context_t *decr_kcf_ctx;
  crypto_ctx_t *mac_ctx;
  kcf_req_params_t decr_params;

  decr_kcf_ctx = (kcf_context_t *)(ctx->cc_framework_private);

  switch (optype) {
  case 129: {
   decr_kcf_ctx->kc_secondctx = ((void*)0);

   err = crypto_mac_init(&mdops->md_mac_mech,
       mdops->md_mac_key, mdops->md_mac_templ,
       (crypto_context_t *)&mac_ctx, ((void*)0));


   if (err != CRYPTO_SUCCESS) {
    break;
   }

   KCF_WRAP_DECRYPT_OPS_PARAMS(&decr_params, 129,
       pd->pd_sid, &mdops->md_decr_mech,
       mdops->md_decr_key, ((void*)0), ((void*)0),
       mdops->md_decr_templ);

   err = kcf_submit_request(pd, ctx, ((void*)0), &decr_params,
       B_FALSE);


   if (err != CRYPTO_SUCCESS) {
    crypto_cancel_ctx((crypto_context_t)mac_ctx);
    break;
   }

   decr_kcf_ctx->kc_secondctx = (kcf_context_t *)
       mac_ctx->cc_framework_private;
   KCF_CONTEXT_REFHOLD((kcf_context_t *)
       mac_ctx->cc_framework_private);

   break;
  default:
   break;

  }
  case 128: {
   crypto_dual_data_t *ct = mdops->md_ciphertext;
   crypto_data_t *pt = mdops->md_plaintext;
   kcf_context_t *mac_kcf_ctx = decr_kcf_ctx->kc_secondctx;
   crypto_ctx_t *mac_ctx = &mac_kcf_ctx->kc_glbl_ctx;

   err = crypto_mac_update((crypto_context_t)mac_ctx,
       (crypto_data_t *)ct, ((void*)0));

   if (err != CRYPTO_SUCCESS)
    break;

   save_offset = ct->dd_offset1;
   save_len = ct->dd_len1;


   if (ct->dd_len2 > 0) {
    ct->dd_offset1 = ct->dd_offset2;
    ct->dd_len1 = ct->dd_len2;
   }

   err = crypto_decrypt_update((crypto_context_t)ctx,
       (crypto_data_t *)ct, pt, ((void*)0));

   ct->dd_offset1 = save_offset;
   ct->dd_len1 = save_len;

   break;
  }
  case 130: {
   crypto_data_t *pt = mdops->md_plaintext;
   crypto_data_t *mac = mdops->md_mac;
   kcf_context_t *mac_kcf_ctx = decr_kcf_ctx->kc_secondctx;
   crypto_ctx_t *mac_ctx = &mac_kcf_ctx->kc_glbl_ctx;

   err = crypto_mac_final((crypto_context_t)mac_ctx,
       mac, ((void*)0));

   if (err != CRYPTO_SUCCESS) {
    crypto_cancel_ctx(ctx);
    break;
   }


   KCF_CONTEXT_REFHOLD(decr_kcf_ctx);
   err = crypto_decrypt_final((crypto_context_t)ctx, pt,
       ((void*)0));

   break;
  }
  }
  break;
 }
 default:

  break;
 }

 return (err);
}
