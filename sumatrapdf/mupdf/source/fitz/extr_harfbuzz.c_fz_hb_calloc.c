
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 void* Memento_label (int ,char*) ;
 int assert (int ) ;
 int fz_calloc_no_throw (int *,size_t,size_t) ;
 int * get_hb_context () ;

void *fz_hb_calloc(size_t n, size_t size)
{
 fz_context *ctx = get_hb_context();

 assert(ctx != ((void*)0));

 return Memento_label(fz_calloc_no_throw(ctx, n, size), "hb");
}
