
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 scalar_t__ TLS_OUT_OF_INDEXES ;
 int TRUE ;
 scalar_t__ TlsAlloc () ;
 scalar_t__ msvcrt_tls_index ;

BOOL msvcrt_init_tls(void)
{
  msvcrt_tls_index = TlsAlloc();

  if (msvcrt_tls_index == TLS_OUT_OF_INDEXES)
  {
    ERR("TlsAlloc() failed!\n");
    return FALSE;
  }
  return TRUE;
}
