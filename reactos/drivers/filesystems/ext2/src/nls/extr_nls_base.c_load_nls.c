
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;


 struct nls_table* find_nls (char*) ;
 int printk (char*,char*) ;
 int request_module (char*,char*) ;

struct nls_table *load_nls(char *charset)
{
    struct nls_table *nls;




    nls = find_nls(charset);
    if (nls)
        return nls;
    return nls;
}
