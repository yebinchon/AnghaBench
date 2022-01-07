
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {TYPE_3__** ddt_histogram; } ;
typedef TYPE_1__ ddt_t ;
struct TYPE_12__ {int dds_ref_blocks; } ;
typedef TYPE_2__ ddt_stat_t ;
struct TYPE_13__ {int * ddh_stat; } ;
typedef TYPE_3__ ddt_histogram_t ;
struct TYPE_14__ {size_t dde_type; size_t dde_class; } ;
typedef TYPE_4__ ddt_entry_t ;


 int ASSERT (int) ;
 int ddt_stat_add (int *,TYPE_2__*,int ) ;
 int ddt_stat_generate (TYPE_1__*,TYPE_4__*,TYPE_2__*) ;
 int highbit64 (int ) ;

__attribute__((used)) static void
ddt_stat_update(ddt_t *ddt, ddt_entry_t *dde, uint64_t neg)
{
 ddt_stat_t dds;
 ddt_histogram_t *ddh;
 int bucket;

 ddt_stat_generate(ddt, dde, &dds);

 bucket = highbit64(dds.dds_ref_blocks) - 1;
 ASSERT(bucket >= 0);

 ddh = &ddt->ddt_histogram[dde->dde_type][dde->dde_class];

 ddt_stat_add(&ddh->ddh_stat[bucket], &dds, neg);
}
