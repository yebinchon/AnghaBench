
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_4__ {int (* headers ) (int ,int ) ;} ;
struct TYPE_5__ {scalar_t__ ks_magic; int ks_type; int ks_raw_buf; int ks_raw_bufsize; TYPE_1__ ks_raw_ops; int ks_snaptime; int ks_crtime; scalar_t__ ks_data_size; int ks_ndata; int ks_flags; int ks_kid; } ;
typedef TYPE_2__ kstat_t ;


 int ASSERT (int) ;
 int ENOMEM ;





 scalar_t__ KS_MAGIC ;
 int PANIC (char*,int) ;
 int kstat_resize_raw (TYPE_2__*) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_puts (struct seq_file*,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int
kstat_seq_show_headers(struct seq_file *f)
{
 kstat_t *ksp = (kstat_t *)f->private;
 int rc = 0;

 ASSERT(ksp->ks_magic == KS_MAGIC);

 seq_printf(f, "%d %d 0x%02x %d %d %lld %lld\n",
     ksp->ks_kid, ksp->ks_type, ksp->ks_flags,
     ksp->ks_ndata, (int)ksp->ks_data_size,
     ksp->ks_crtime, ksp->ks_snaptime);

 switch (ksp->ks_type) {
  case 129:
restart:
   if (ksp->ks_raw_ops.headers) {
    rc = ksp->ks_raw_ops.headers(
        ksp->ks_raw_buf, ksp->ks_raw_bufsize);
    if (rc == ENOMEM && !kstat_resize_raw(ksp))
     goto restart;
    if (!rc)
     seq_puts(f, ksp->ks_raw_buf);
   } else {
    seq_printf(f, "raw data\n");
   }
   break;
  case 130:
   seq_printf(f, "%-31s %-4s %s\n",
       "name", "type", "data");
   break;
  case 132:
   seq_printf(f, "%-8s %-8s %-8s %-8s %-8s\n",
       "hard", "soft", "watchdog",
       "spurious", "multsvc");
   break;
  case 131:
   seq_printf(f,
       "%-8s %-8s %-8s %-8s %-8s %-8s "
       "%-8s %-8s %-8s %-8s %-8s %-8s\n",
       "nread", "nwritten", "reads", "writes",
       "wtime", "wlentime", "wupdate",
       "rtime", "rlentime", "rupdate",
       "wcnt", "rcnt");
   break;
  case 128:
   seq_printf(f,
       "%-31s %-8s "
       "%-8s %-8s %-8s %-8s %-8s\n",
       "name", "events", "elapsed",
       "min", "max", "start", "stop");
   break;
  default:
   PANIC("Undefined kstat type %d\n", ksp->ks_type);
 }

 return (-rc);
}
