
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_sighandler_t ;
typedef scalar_t__ sighandler_t ;


 scalar_t__ SIG_ERR ;
 scalar_t__ SIG_IGN ;
 int STRM_NG ;
 int STRM_OK ;
 int add_sig (int,int ,void*) ;
 scalar_t__ handler ;
 int sigcall ;
 scalar_t__ signal (int,scalar_t__) ;

int
strm_signal(int sig, strm_sighandler_t func, void* arg)
{
  sighandler_t r = signal(sig, SIG_IGN);

  if (r == SIG_ERR) return STRM_NG;
  if (r && r != handler) {
    if (add_sig(sig, sigcall, (void*)r) == STRM_NG)
      return STRM_NG;
  }
  if (add_sig(sig, func, arg) == STRM_NG)
    return STRM_NG;
  r = signal(sig, handler);
  if (r == SIG_ERR) return STRM_NG;
  return STRM_OK;
}
