
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {scalar_t__ skc_magic; int skc_flags; int skc_obj_size; int skc_obj_alloc; int skc_slab_size; int skc_slab_total; int skc_lock; scalar_t__ skc_obj_emergency_max; scalar_t__ skc_obj_emergency; scalar_t__ skc_obj_deadlock; scalar_t__ skc_obj_max; scalar_t__ skc_obj_total; scalar_t__ skc_slab_max; scalar_t__ skc_slab_alloc; int skc_name; } ;
typedef TYPE_1__ spl_kmem_cache_t ;


 int ASSERT (int) ;
 int KMC_SLAB ;
 scalar_t__ SKC_MAGIC ;
 int seq_printf (struct seq_file*,char*,unsigned long,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
slab_seq_show(struct seq_file *f, void *p)
{
 spl_kmem_cache_t *skc = p;

 ASSERT(skc->skc_magic == SKC_MAGIC);

 if (skc->skc_flags & KMC_SLAB) {







  spin_lock(&skc->skc_lock);
  seq_printf(f, "%-36s  ", skc->skc_name);
  seq_printf(f, "0x%05lx %9s %9lu %8s %8u  "
      "%5s %5s %5s  %5s %5lu %5s  %5s %5s %5s\n",
      (long unsigned)skc->skc_flags,
      "-",
      (long unsigned)(skc->skc_obj_size * skc->skc_obj_alloc),
      "-",
      (unsigned)skc->skc_obj_size,
      "-", "-", "-", "-",
      (long unsigned)skc->skc_obj_alloc,
      "-", "-", "-", "-");
  spin_unlock(&skc->skc_lock);
  return (0);
 }

 spin_lock(&skc->skc_lock);
 seq_printf(f, "%-36s  ", skc->skc_name);
 seq_printf(f, "0x%05lx %9lu %9lu %8u %8u  "
     "%5lu %5lu %5lu  %5lu %5lu %5lu  %5lu %5lu %5lu\n",
     (long unsigned)skc->skc_flags,
     (long unsigned)(skc->skc_slab_size * skc->skc_slab_total),
     (long unsigned)(skc->skc_obj_size * skc->skc_obj_alloc),
     (unsigned)skc->skc_slab_size,
     (unsigned)skc->skc_obj_size,
     (long unsigned)skc->skc_slab_total,
     (long unsigned)skc->skc_slab_alloc,
     (long unsigned)skc->skc_slab_max,
     (long unsigned)skc->skc_obj_total,
     (long unsigned)skc->skc_obj_alloc,
     (long unsigned)skc->skc_obj_max,
     (long unsigned)skc->skc_obj_deadlock,
     (long unsigned)skc->skc_obj_emergency,
     (long unsigned)skc->skc_obj_emergency_max);
 spin_unlock(&skc->skc_lock);
 return (0);
}
