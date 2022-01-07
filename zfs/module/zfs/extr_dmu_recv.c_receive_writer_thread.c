
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_writer_arg {scalar_t__ err; int mutex; int cv; int done; int q; } ;
struct receive_record_arg {int payload_size; struct receive_record_arg* payload; int * arc_buf; int eos_marker; } ;
typedef int fstrans_cookie_t ;


 int B_TRUE ;
 struct receive_record_arg* bqueue_dequeue (int *) ;
 int cv_signal (int *) ;
 int dmu_return_arcbuf (int *) ;
 int kmem_free (struct receive_record_arg*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ receive_process_record (struct receive_writer_arg*,struct receive_record_arg*) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int thread_exit () ;

__attribute__((used)) static void
receive_writer_thread(void *arg)
{
 struct receive_writer_arg *rwa = arg;
 struct receive_record_arg *rrd;
 fstrans_cookie_t cookie = spl_fstrans_mark();

 for (rrd = bqueue_dequeue(&rwa->q); !rrd->eos_marker;
     rrd = bqueue_dequeue(&rwa->q)) {





  if (rwa->err == 0) {
   rwa->err = receive_process_record(rwa, rrd);
  } else if (rrd->arc_buf != ((void*)0)) {
   dmu_return_arcbuf(rrd->arc_buf);
   rrd->arc_buf = ((void*)0);
   rrd->payload = ((void*)0);
  } else if (rrd->payload != ((void*)0)) {
   kmem_free(rrd->payload, rrd->payload_size);
   rrd->payload = ((void*)0);
  }
  kmem_free(rrd, sizeof (*rrd));
 }
 kmem_free(rrd, sizeof (*rrd));
 mutex_enter(&rwa->mutex);
 rwa->done = B_TRUE;
 cv_signal(&rwa->cv);
 mutex_exit(&rwa->mutex);
 spl_fstrans_unmark(cookie);
 thread_exit();
}
