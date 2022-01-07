
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int statement_list_t ;


 scalar_t__ do_everything ;
 int do_proxies ;
 int fclose (int ) ;
 int init_proxy (int const*) ;
 int need_proxy_file (int const*) ;
 int proxy ;
 int write_proxy_routines (int const*) ;

void write_proxies(const statement_list_t *stmts)
{
  if (!do_proxies) return;
  if (do_everything && !need_proxy_file(stmts)) return;

  init_proxy(stmts);
  if(!proxy) return;

  write_proxy_routines( stmts );
  fclose(proxy);
}
