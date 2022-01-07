
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int skm_size; int skm_cpu; int skm_age; TYPE_2__* skm_cache; int skm_refill; scalar_t__ skm_avail; int skm_magic; } ;
typedef TYPE_1__ spl_kmem_magazine_t ;
struct TYPE_7__ {int skc_mag_size; int skc_mag_refill; } ;
typedef TYPE_2__ spl_kmem_cache_t ;


 int GFP_KERNEL ;
 int SKM_MAGIC ;
 int cpu_to_node (int) ;
 int jiffies ;
 TYPE_1__* kmalloc_node (int,int ,int ) ;

__attribute__((used)) static spl_kmem_magazine_t *
spl_magazine_alloc(spl_kmem_cache_t *skc, int cpu)
{
 spl_kmem_magazine_t *skm;
 int size = sizeof (spl_kmem_magazine_t) +
     sizeof (void *) * skc->skc_mag_size;

 skm = kmalloc_node(size, GFP_KERNEL, cpu_to_node(cpu));
 if (skm) {
  skm->skm_magic = SKM_MAGIC;
  skm->skm_avail = 0;
  skm->skm_size = skc->skc_mag_size;
  skm->skm_refill = skc->skc_mag_refill;
  skm->skm_cache = skc;
  skm->skm_age = jiffies;
  skm->skm_cpu = cpu;
 }

 return (skm);
}
