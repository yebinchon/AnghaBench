
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {scalar_t__ ks_magic; scalar_t__ ks_type; int ks_lock; int ks_raw_bufsize; int ks_raw_buf; } ;
typedef TYPE_1__ kstat_t ;


 int ASSERT (int) ;
 scalar_t__ KSTAT_TYPE_RAW ;
 scalar_t__ KS_MAGIC ;
 int mutex_exit (int ) ;
 int vmem_free (int ,int ) ;

__attribute__((used)) static void
kstat_seq_stop(struct seq_file *f, void *v)
{
 kstat_t *ksp = (kstat_t *)f->private;
 ASSERT(ksp->ks_magic == KS_MAGIC);

 if (ksp->ks_type == KSTAT_TYPE_RAW)
  vmem_free(ksp->ks_raw_buf, ksp->ks_raw_bufsize);

 mutex_exit(ksp->ks_lock);
}
