
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bar_data {int tlen; void* title; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int SIGINT ;
 int SIGWINCH ;
 int STRM_NG ;
 int STRM_OK ;
 int fin_bar ;
 int init_bar (struct bar_data*) ;
 int interrupt ;
 int iter_bar ;
 void* malloc (int) ;
 int memcpy (void*,char*,int) ;
 scalar_t__ refcnt ;
 int sigupdate ;
 int strm_atomic_inc (scalar_t__) ;
 int strm_consumer ;
 int strm_get_args (int *,int,int *,char*,char**,int*) ;
 int strm_signal (int ,int ,int *) ;
 int strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int ) ;
 int winch ;

__attribute__((used)) static int
exec_bgraph(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct bar_data* d;
  char* title = ((void*)0);
  strm_int tlen = 0;

  strm_get_args(strm, argc, args, "|s", &title, &tlen);
  d = malloc(sizeof(struct bar_data));
  if (!d) return STRM_NG;
  d->title = malloc(tlen);
  memcpy((void*)d->title, title, tlen);
  d->tlen = tlen;
  if (refcnt == 0) {
    strm_atomic_inc(refcnt);
    strm_signal(SIGWINCH, sigupdate, &winch);
    strm_signal(SIGINT, sigupdate, &interrupt);
  }
  if (init_bar(d) == STRM_NG) return STRM_NG;
  *ret = strm_stream_value(strm_stream_new(strm_consumer, iter_bar,
                                           fin_bar, (void*)d));
  return STRM_OK;
}
