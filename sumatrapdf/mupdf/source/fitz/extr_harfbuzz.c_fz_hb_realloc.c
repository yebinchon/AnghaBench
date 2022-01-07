
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 void* Memento_label (int ,char*) ;
 int assert (int ) ;
 int fz_realloc_no_throw (int *,void*,size_t) ;
 int * get_hb_context () ;

void *fz_hb_realloc(void *ptr, size_t size)
{
 fz_context *ctx = get_hb_context();

 assert(ctx != ((void*)0));

 return Memento_label(fz_realloc_no_throw(ctx, ptr, size), "hb");
}
