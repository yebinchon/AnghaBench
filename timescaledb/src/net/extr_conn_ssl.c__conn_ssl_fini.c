
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_free_strings () ;

void
_conn_ssl_fini(void)
{
 ERR_free_strings();
}
