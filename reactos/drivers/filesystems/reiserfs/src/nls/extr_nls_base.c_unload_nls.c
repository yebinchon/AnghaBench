
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {scalar_t__ owner; } ;


 int __MOD_DEC_USE_COUNT (scalar_t__) ;

void unload_nls(struct nls_table *nls)
{
 if (nls->owner)
  __MOD_DEC_USE_COUNT(nls->owner);
}
