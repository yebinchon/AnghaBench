
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
typedef int kstat_timer_t ;
struct TYPE_4__ {int (* data ) (int ,int ,void*) ;} ;
struct TYPE_5__ {scalar_t__ ks_magic; int ks_type; int ks_ndata; int ks_data_size; int ks_data; int ks_raw_buf; int ks_raw_bufsize; TYPE_1__ ks_raw_ops; } ;
typedef TYPE_2__ kstat_t ;
typedef int kstat_named_t ;
typedef int kstat_io_t ;
typedef int kstat_intr_t ;


 int ASSERT (int) ;
 int ENOMEM ;





 scalar_t__ KS_MAGIC ;
 int PANIC (char*,int) ;
 int kstat_resize_raw (TYPE_2__*) ;
 int kstat_seq_show_intr (struct seq_file*,int *) ;
 int kstat_seq_show_io (struct seq_file*,int *) ;
 int kstat_seq_show_named (struct seq_file*,int *) ;
 int kstat_seq_show_raw (struct seq_file*,int ,int ) ;
 int kstat_seq_show_timer (struct seq_file*,int *) ;
 int seq_puts (struct seq_file*,int ) ;
 int stub1 (int ,int ,void*) ;

__attribute__((used)) static int
kstat_seq_show(struct seq_file *f, void *p)
{
 kstat_t *ksp = (kstat_t *)f->private;
 int rc = 0;

 ASSERT(ksp->ks_magic == KS_MAGIC);

 switch (ksp->ks_type) {
  case 129:
restart:
   if (ksp->ks_raw_ops.data) {
    rc = ksp->ks_raw_ops.data(
        ksp->ks_raw_buf, ksp->ks_raw_bufsize, p);
    if (rc == ENOMEM && !kstat_resize_raw(ksp))
     goto restart;
    if (!rc)
     seq_puts(f, ksp->ks_raw_buf);
   } else {
    ASSERT(ksp->ks_ndata == 1);
    rc = kstat_seq_show_raw(f, ksp->ks_data,
        ksp->ks_data_size);
   }
   break;
  case 130:
   rc = kstat_seq_show_named(f, (kstat_named_t *)p);
   break;
  case 132:
   rc = kstat_seq_show_intr(f, (kstat_intr_t *)p);
   break;
  case 131:
   rc = kstat_seq_show_io(f, (kstat_io_t *)p);
   break;
  case 128:
   rc = kstat_seq_show_timer(f, (kstat_timer_t *)p);
   break;
  default:
   PANIC("Undefined kstat type %d\n", ksp->ks_type);
 }

 return (-rc);
}
