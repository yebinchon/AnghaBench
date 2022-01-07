
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {scalar_t__ ks_magic; scalar_t__ ks_type; int ks_flags; scalar_t__ ks_ndata; int ks_snaptime; int (* ks_update ) (TYPE_1__*,int ) ;int ks_raw_bufsize; int ks_raw_buf; int ks_lock; } ;
typedef TYPE_1__ kstat_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int KSTAT_FLAG_NO_HEADERS ;
 int KSTAT_READ ;
 scalar_t__ KSTAT_TYPE_RAW ;
 scalar_t__ KS_MAGIC ;
 int PAGE_SIZE ;
 int gethrtime () ;
 void* kstat_seq_data_addr (TYPE_1__*,scalar_t__) ;
 scalar_t__ kstat_seq_show_headers (struct seq_file*) ;
 int mutex_enter (int ) ;
 int stub1 (TYPE_1__*,int ) ;
 int vmem_alloc (int ,int ) ;

__attribute__((used)) static void *
kstat_seq_start(struct seq_file *f, loff_t *pos)
{
 loff_t n = *pos;
 kstat_t *ksp = (kstat_t *)f->private;
 ASSERT(ksp->ks_magic == KS_MAGIC);

 mutex_enter(ksp->ks_lock);

 if (ksp->ks_type == KSTAT_TYPE_RAW) {
  ksp->ks_raw_bufsize = PAGE_SIZE;
  ksp->ks_raw_buf = vmem_alloc(ksp->ks_raw_bufsize, KM_SLEEP);
 }


 (void) ksp->ks_update(ksp, KSTAT_READ);

 ksp->ks_snaptime = gethrtime();

 if (!(ksp->ks_flags & KSTAT_FLAG_NO_HEADERS) && !n &&
     kstat_seq_show_headers(f))
  return (((void*)0));

 if (n >= ksp->ks_ndata)
  return (((void*)0));

 return (kstat_seq_data_addr(ksp, n));
}
