
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct bar_data {double* data; scalar_t__ offset; int dlen; double max; scalar_t__ row; } ;
typedef int strm_value ;
struct TYPE_5__ {struct bar_data* data; } ;
typedef TYPE_1__ strm_stream ;


 void* FALSE ;
 int SIGINT ;
 int STRM_NG ;
 int STRM_OK ;
 int exit (int) ;
 int free (double*) ;
 int init_bar (struct bar_data*) ;
 void* interrupt ;
 int move_cursor (scalar_t__,int) ;
 int show_cursor () ;
 int show_graph (struct bar_data*) ;
 int sigupdate ;
 int strm_number_p (int ) ;
 int strm_raise (TYPE_1__*,char*) ;
 int strm_stream_close (TYPE_1__*) ;
 int strm_unsignal (int ,int ) ;
 double strm_value_float (int ) ;
 void* winch ;

__attribute__((used)) static int
iter_bar(strm_stream* strm, strm_value data)
{
  struct bar_data* d = strm->data;
  double f, max = 1.0;

  if (interrupt) {
    interrupt = FALSE;
    strm_unsignal(SIGINT, sigupdate);
    move_cursor(d->row-1, 1);
    show_cursor();
    exit(1);
  }
  if (!strm_number_p(data)) {
    strm_raise(strm, "invalid data");
    return STRM_NG;
  }

  if (winch) {
    winch = FALSE;
    free(d->data);
    if (init_bar(d) == STRM_NG) {
      strm_stream_close(strm);
      return STRM_NG;
    }
  }
  f = strm_value_float(data);
  if (f < 0) f = 0;
  d->data[d->offset++] = f;
  max = 1.0;
  for (int i=0; i<d->dlen; i++) {
    f = d->data[i];
    if (f > max) max = f;
  }
  d->max = max;
  if (d->offset == d->dlen) {
    d->offset = 0;
  }
  show_graph(d);
  return STRM_OK;
}
