
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_range {int dummy; } ;
struct redact_list_thread_arg {int error_code; int q; int resume; int * rl; int mark_redact; int num_blocks_visited; int cancel; } ;
struct redact_list_cb_arg {int mark_redact; int num_blocks_visited; int * q; int * cancel; int member_0; } ;
typedef int fstrans_cookie_t ;


 int B_TRUE ;
 int DATA ;
 int EINTR ;
 int bqueue_enqueue_flush (int *,struct send_range*,int) ;
 int dsl_redaction_list_traverse (int *,int *,int ,struct redact_list_cb_arg*) ;
 struct send_range* range_alloc (int ,int ,int ,int ,int ) ;
 int redact_list_cb ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;

__attribute__((used)) static void
redact_list_thread(void *arg)
{
 struct redact_list_thread_arg *rlt_arg = arg;
 struct send_range *record;
 fstrans_cookie_t cookie = spl_fstrans_mark();
 if (rlt_arg->rl != ((void*)0)) {
  struct redact_list_cb_arg rlcba = {0};
  rlcba.cancel = &rlt_arg->cancel;
  rlcba.q = &rlt_arg->q;
  rlcba.num_blocks_visited = rlt_arg->num_blocks_visited;
  rlcba.mark_redact = rlt_arg->mark_redact;
  int err = dsl_redaction_list_traverse(rlt_arg->rl,
      &rlt_arg->resume, redact_list_cb, &rlcba);
  if (err != EINTR)
   rlt_arg->error_code = err;
 }
 record = range_alloc(DATA, 0, 0, 0, B_TRUE);
 bqueue_enqueue_flush(&rlt_arg->q, record, sizeof (*record));
 spl_fstrans_unmark(cookie);
}
