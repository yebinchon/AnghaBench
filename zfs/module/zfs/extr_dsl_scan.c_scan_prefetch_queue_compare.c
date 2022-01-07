
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spic_zb; TYPE_2__* spic_spc; } ;
typedef TYPE_1__ scan_prefetch_issue_ctx_t ;
struct TYPE_4__ {int spc_indblkshift; int spc_datablkszsec; } ;
typedef TYPE_2__ scan_prefetch_ctx_t ;


 int zbookmark_compare (int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static int
scan_prefetch_queue_compare(const void *a, const void *b)
{
 const scan_prefetch_issue_ctx_t *spic_a = a, *spic_b = b;
 const scan_prefetch_ctx_t *spc_a = spic_a->spic_spc;
 const scan_prefetch_ctx_t *spc_b = spic_b->spic_spc;

 return (zbookmark_compare(spc_a->spc_datablkszsec,
     spc_a->spc_indblkshift, spc_b->spc_datablkszsec,
     spc_b->spc_indblkshift, &spic_a->spic_zb, &spic_b->spic_zb));
}
