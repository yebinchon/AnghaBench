
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kr_savelen; scalar_t__ kr_saveoffset; int * kr_areq; int kr_callreq; } ;
typedef TYPE_1__ kcf_dual_req_t ;
typedef int crypto_call_req_t ;


 int KCF_KMFLAG (int *) ;
 int bzero (int *,int) ;
 TYPE_1__* kmem_alloc (int,int ) ;

kcf_dual_req_t *
kcf_alloc_req(crypto_call_req_t *crq)
{
 kcf_dual_req_t *kcr;

 kcr = kmem_alloc(sizeof (kcf_dual_req_t), KCF_KMFLAG(crq));

 if (kcr == ((void*)0))
  return (((void*)0));


 if (crq != ((void*)0))
  kcr->kr_callreq = *crq;
 else
  bzero(&(kcr->kr_callreq), sizeof (crypto_call_req_t));
 kcr->kr_areq = ((void*)0);
 kcr->kr_saveoffset = 0;
 kcr->kr_savelen = 0;

 return (kcr);
}
