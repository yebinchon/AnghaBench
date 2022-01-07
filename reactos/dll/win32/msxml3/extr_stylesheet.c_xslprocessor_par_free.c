
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xslprocessor_params {int count; } ;
struct xslprocessor_par {int value; int name; int entry; } ;


 int SysFreeString (int ) ;
 int heap_free (struct xslprocessor_par*) ;
 int list_remove (int *) ;

__attribute__((used)) static void xslprocessor_par_free(struct xslprocessor_params *params, struct xslprocessor_par *par)
{
    params->count--;
    list_remove(&par->entry);
    SysFreeString(par->name);
    SysFreeString(par->value);
    heap_free(par);
}
