
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redact_record {int eos_marker; } ;
struct redact_merge_thread_arg {int q; int cancel; int thr_args; int numsnaps; int error_code; } ;


 int B_TRUE ;
 int KM_SLEEP ;
 int bqueue_enqueue_flush (int *,struct redact_record*,int) ;
 struct redact_record* kmem_zalloc (int,int ) ;
 int perform_thread_merge (int *,int ,int ,int *) ;
 int thread_exit () ;

__attribute__((used)) static void
redact_merge_thread(void *arg)
{
 struct redact_merge_thread_arg *rmta = arg;
 rmta->error_code = perform_thread_merge(&rmta->q,
     rmta->numsnaps, rmta->thr_args, &rmta->cancel);
 struct redact_record *rec = kmem_zalloc(sizeof (*rec), KM_SLEEP);
 rec->eos_marker = B_TRUE;
 bqueue_enqueue_flush(&rmta->q, rec, 1);
 thread_exit();
}
