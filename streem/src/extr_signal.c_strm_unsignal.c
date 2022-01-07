
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sig_list {int sig; struct sig_list* next; } ;
typedef int strm_sighandler_t ;
typedef scalar_t__ sighandler_t ;


 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int STRM_NG ;
 int STRM_OK ;
 int handler ;
 struct sig_list* sig_list ;
 scalar_t__ signal (int,int ) ;

int
strm_unsignal(int sig, strm_sighandler_t func)
{
  sighandler_t r = signal(sig, SIG_IGN);
  struct sig_list* list;
  struct sig_list* tmp = ((void*)0);

  if (r == SIG_ERR) return STRM_NG;
  for (list=sig_list; list; list=list->next) {
    if (list->sig == sig) {
      if (tmp == ((void*)0)) {
        sig_list = list->next;
      }
      else {
        tmp->next = list->next;
        tmp = list;
      }
    }
  }
  signal(sig, handler);
  return STRM_OK;
}
