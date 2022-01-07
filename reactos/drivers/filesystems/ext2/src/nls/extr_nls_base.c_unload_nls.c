
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int owner; } ;


 int module_put (int ) ;

void unload_nls(struct nls_table *nls)
{
    module_put(nls->owner);
}
