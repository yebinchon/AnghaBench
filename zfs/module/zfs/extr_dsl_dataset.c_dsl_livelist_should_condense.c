
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {TYPE_1__* bpo_phys; } ;
struct TYPE_8__ {TYPE_2__ dle_bpobj; } ;
typedef TYPE_3__ dsl_deadlist_entry_t ;
typedef int boolean_t ;
struct TYPE_6__ {int bpo_num_freed; int bpo_num_blkptrs; } ;


 int B_FALSE ;
 int B_TRUE ;
 int zfs_livelist_max_entries ;

__attribute__((used)) static boolean_t
dsl_livelist_should_condense(dsl_deadlist_entry_t *first,
    dsl_deadlist_entry_t *next)
{
 uint64_t total_free = first->dle_bpobj.bpo_phys->bpo_num_freed +
     next->dle_bpobj.bpo_phys->bpo_num_freed;
 uint64_t total_entries = first->dle_bpobj.bpo_phys->bpo_num_blkptrs +
     next->dle_bpobj.bpo_phys->bpo_num_blkptrs;
 if ((total_entries - (2 * total_free)) < zfs_livelist_max_entries)
  return (B_TRUE);
 return (B_FALSE);
}
