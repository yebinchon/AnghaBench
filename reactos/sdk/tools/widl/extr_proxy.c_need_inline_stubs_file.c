
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int statement_list_t ;


 int does_any_iface (int const*,int ) ;
 int need_inline_stubs ;

int need_inline_stubs_file(const statement_list_t *stmts)
{
  return does_any_iface(stmts, need_inline_stubs);
}
