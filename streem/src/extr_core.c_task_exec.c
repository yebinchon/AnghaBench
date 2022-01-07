
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct strm_task {scalar_t__ (* func ) (TYPE_1__*,int ) ;int data; } ;
typedef int strm_value ;
struct TYPE_7__ {scalar_t__ mode; } ;
typedef TYPE_1__ strm_stream ;
typedef scalar_t__ (* strm_callback ) (TYPE_1__*,int ) ;


 scalar_t__ STRM_NG ;
 int free (struct strm_task*) ;
 scalar_t__ strm_dying ;
 int strm_eprint (TYPE_1__*) ;
 scalar_t__ strm_killed ;
 scalar_t__ strm_option_verbose ;
 int strm_stream_close (TYPE_1__*) ;
 scalar_t__ stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void
task_exec(strm_stream* strm, struct strm_task* task)
{
  strm_callback func = task->func;
  strm_value data = task->data;

  free(task);
  if (strm->mode == strm_killed) return;
  if ((*func)(strm, data) == STRM_NG) {
    if (strm_option_verbose) {
      strm_eprint(strm);
    }
  }
  if (strm->mode == strm_dying) {
    strm_stream_close(strm);
  }
}
